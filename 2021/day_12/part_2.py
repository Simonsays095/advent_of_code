from __future__ import annotations
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import matplotlib.pylab as pl


class Cave:
    def __init__(self, name: str):
        self.big = name[0].isupper()
        self.name = name
        self.connections = []
        self.pos = np.asarray([0.0,0.0])
        self.depth = None
        self.force = np.asarray([0.0,0.0])

    def applyForce(self, dt: float = 0.1):
        # print(f"Applying force {self.force} to {self.name}")
        forcemag = np.linalg.norm(self.force)
        # Set maximum force
        if forcemag > 10:
            self.force *= 10/forcemag
            forcemag = 10
        dv = self.force * dt  # Actually dp, but set m=1
        self.pos += dv * dt
        # print(f"{forcemag}, {dv*dt}\n")
        self.force = np.asarray([0.0,0.0])

    def calcForce(self, other: Cave, k: float = 10):
        r = self.pos - other.pos
        dist = np.sqrt(r[0]**2 + r[1]**2)
        if dist == 0:
            dist = 0.1
        # Model as a spring
        mag = k*(1-dist)
        dir = r/dist
        return dir * mag

    def repel(self, other: Cave, k: float = 10):
        if other is self: return 0
        r = self.pos - other.pos
        dist = np.linalg.norm(r)
        if dist == 0:
            dist = 0.1
        mag = k/dist**4
        # mag = np.exp(-10*dist)*k
        dir = r/dist
        return dir * mag

    def dihedral(self, otherA: Cave, otherB: Cave, k: float = 1):
        # Compute and normalize distances
        rA = self.pos - otherA.pos
        rB = self.pos - otherB.pos
        distA = np.sqrt(rA[0]**2 + rA[1]**2)
        distB = np.sqrt(rB[0]**2 + rB[1]**2)
        rA /= distA
        rB /= distB

        cosTheta = rA.dot(rB)

        # As cosTheta -> +/- 1, force gets larger
        mag = k*abs(cosTheta)**5
        if cosTheta >= 0:
            mag = 0
        
        inward = -(rA + rB)
        # print(f"Inward dir: {inward}")
        def inward_perp(vec):
            dir = np.asarray([vec[1], -vec[0]])
            if dir @ inward < 0:
                dir *= -1
            return dir

        # Set this magnitude of force to otherA
        forceA = inward_perp(rA)
        # print(f"Inward dir for A: {forceA}")
        forceA *= mag

        # Compute force on otherB to cancel torque
        forceB = inward_perp(rB)
        # print(f"Inward dir for A: {forceB}")
        forceB *= mag*distA/distB

        # Compute force on self that cancels net force
        force = - forceA - forceB

        return forceA, force, forceB

        # dir = rA + rB
        # dir = np.asarray([dir[1], -dir[0]])
        # dir /= np.sqrt(dir[0]**2 + dir[1]**2)
        if self.name == "b":
            print(f"{otherA.name} <-> {otherB.name}")
            print("Dihedral force:", mag*dir)
        return -mag * dir

    def stretch(self, other: Cave, k: float = 10):
        if self.depth == other.depth:
            return 0
        elif self.depth > other.depth:
            dir = np.asarray([1,0])
        else:
            dir = np.asarray([-1,0])
        mag = k
        return mag * dir


class CaveSystem:
    def __init__(self):
        self.caves = []
    
    def add_route(self, route_str: str):
        start, end = route_str.split('-')
        # Map names to caves
        found_start = False
        found_end = False
        for cave in self.caves:
            if not found_start and cave.name == start:
                start = cave
                found_start = True
            if not found_end and cave.name == end:
                end = cave
                found_end = True
        if not found_start:
            start = Cave(start)
            self.caves.append(start)
        if not found_end:
            end = Cave(end)
            self.caves.append(end)
        
        # Add connections to each cave
        start.connections.append(end)
        end.connections.append(start)

    def traverse_all_paths(self):
        start = next(cave for cave in self.caves if cave.name == "start")
        end = next(cave for cave in self.caves if cave.name == "end")
        return self.get_routes(start, end)

    def can_enter(self, cave: Cave, current_path: list):
        if cave.name == "start":  # Hard-coded bleh
            return False
        if cave.big or cave not in current_path:
            return True
        small_caves = [cave.name for cave in current_path if not cave.big]
        return (len(small_caves) == len(set(small_caves)))

    def get_routes(self, start: Cave, end: Cave, starting_path = []):
        # If our current cave is the end, save this path and go back one level
        current_path = starting_path.copy()
        current_path.append(start)
        if start is end:
            return [current_path]

        # For each connection, go to it if it's allowed
        routes = []
        for cave in start.connections:
            if self.can_enter(cave, current_path):
                routes.extend(self.get_routes(cave, end, current_path))

        return routes

def main():
    with open("input", 'r') as f:
        inp = f.read().splitlines()
    system = CaveSystem()
    for route in inp:
        system.add_route(route)
    
    # Traverse route
    paths = system.traverse_all_paths()
    for path in paths:
        for idx, cave in enumerate(path):
            if cave.depth is None:
                cave.depth = idx
            else:
                cave.depth = min(cave.depth, idx)

    fig, ax = plt.subplots()
    ax.set_aspect('equal')
    # Throw caves on the plane randomly, with x/y-coords in [0,sqrt(#caves)]
    extent = np.sqrt(len(system.caves))
    for cave in system.caves:
        cave.pos = np.random.random(2)*extent
    
    # Plot each cave as a circle with text inside
    circles = []
    labels = []
    for cave in system.caves:
        c = plt.Circle(cave.pos, 0.1)
        circles.append([ax.add_patch(c), cave])
        labels.append([ax.annotate(cave.name, xy=cave.pos, ha="center", va="center"), cave])

    # Add lines for each connection (only once)
    connected = []
    lines = []
    for cave in system.caves:
        for other in cave.connections:
            endpoints = {cave, other}
            if endpoints not in connected:
                connected.append(endpoints)
                num = 0
                for path in paths:
                    for start, end in zip(path[:-1], path[1:]):
                        if {start, end} == endpoints:
                            num += 1
                print(f"Path {cave.name} -> {other.name} traversed {num} times")
                lines.append([ax.plot([cave.pos[0], other.pos[0]], [cave.pos[1], other.pos[1]], zorder=-1), cave, other, num])
    
    # Weight = # of times this path is traversed (normalized)
    num_segs_traveled = max([stuff[3] for stuff in lines])
    for line, caveA, caveB, width in lines:
        norm = width/num_segs_traveled
        color = pl.cm.jet(norm)
        line[0].set_linewidth(9*norm)
        line[0].set_color(color)
        width /= num_segs_traveled
    
    # Animate the settling/relaxation
    def step(i):
        dt = 0.05
        for idx, cave in enumerate(system.caves):
            for A, otherA in enumerate(system.caves):
                if otherA is cave: continue
                # Connections = springs
                if otherA in cave.connections:
                    # print(f"Computing spring force {cave.name} <-> {otherA.name}")
                    force = cave.calcForce(otherA)
                    # Net 0 force, 0 torque because only 2 points
                    cave.force += force
                    otherA.force -= force
                # repel nonconnections
                else:
                    force = cave.repel(otherA)
                    # print(f"Computing repelling force {cave.name} <-> {otherA.name}: {force}")
                    # Net 0 force, 0 torque because only 2 points
                    cave.force += force
                    otherA.force -= force

                # Stretch earlier nodes to left, later to right
                force = cave.stretch(otherA, k=100/(i+1))
                cave.force += force
                otherA.force -= force

                # Dihedral force bends mostly-straight connections
                for B, otherB in enumerate(system.caves):
                    if otherB is otherA or otherB is cave: continue
                    # print(f"Computing dihedral forces for {otherA.name} <-> {cave.name} <-> {otherB.name}")
                    forceA, force, forceB = cave.dihedral(otherA, otherB, k=2-2*np.exp(-i/1500))
                    otherA.force += forceA
                    cave.force += force
                    otherB.force += forceB

            #     else:
            #         if i <= 300:
            #             repel_mag = 500
            #         else:
            #             repel_mag = 20
            #         force += cave.repel(otherA, k=repel_mag)
            #     # Apply dihedral forces
            #     for B, otherB in enumerate(system.caves[A:]):
            #         if otherA is otherB or otherB is cave:
            #             continue
            #         force += cave.dihedral(otherA, otherB)
            #     # Stretch distance nodes (graphwise) away from each other
            #     # Start stretching, then reduce the stretch over time
            #     if i <= 100:
            #         stretch_force = 5
            #     else:
            #         stretch_force = 5*np.exp(1-i/100)
            #         # stretch_force = np.exp(100-i)
            #     force += cave.stretch(otherA, k=stretch_force)
            # # Update cave position
            # forcemag = np.sqrt(force[0]**2 + force[1]**2)
            # if forcemag == 0:
            #     force = 0
            # else:
            #     newmag = min(forcemag, 10)
            #     force *= newmag/forcemag
            # # print(force)
            # dpos = force * dt
            # cave.pos += dpos
        netForce = np.asarray([0.0,0.0])
        for cave in system.caves:
            netForce += cave.force
            cave.applyForce(dt)
        # print(f"Net force: {netForce}")
        print(f"step {i}")
        # Update circle position
        for circle, cave in circles:
            circle.center = cave.pos
        # Update label positions
        for label, cave in labels:
            label.set_position(cave.pos)
        # Update line positions
        for line, caveA, caveB, width in lines:
            line = line[0]
            line.set_xdata([caveA.pos[0], caveB.pos[0]])
            line.set_ydata([caveA.pos[1], caveB.pos[1]])
        # Update plot boundaries
        ax.relim()
        ax.autoscale_view()
    anim = animation.FuncAnimation(fig, step, interval=10, save_count=600)
    plt.show()


if __name__ == "__main__":
    main()