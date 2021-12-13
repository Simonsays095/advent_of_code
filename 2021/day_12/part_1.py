import numpy as np
import matplotlib.pyplot as plt


class Cave:
    def __init__(self, name: str):
        self.big = name[0].isupper()
        self.name = name
        self.connections = []


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
        all_paths = []
        path = []
        traversed  = [False] * len(self.caves)
        # Find start
        start = next(cave for cave in self.caves if cave.name == "start")
        end = next(cave for cave in self.caves if cave.name == "end")
        all_paths = self.get_routes(start, end)
        return all_paths

    def can_enter(self, cave: Cave, current_path: list):
        return cave.big or cave not in current_path

    def get_routes(self, start: Cave, end: Cave, starting_path = []):
        print(f"Getting route from {start.name} to {end.name}")
        print(f"Already visited {[cave.name for cave in starting_path]}")
        # If our current cave is the end, save this path and go back one level
        current_path = starting_path.copy()
        current_path.append(start)
        if start is end:
            return [current_path]

        # For each connection, go to it if it's not in the path already or if it's big
        routes = []
        for cave in start.connections:
            print(f"Looking at connection {start.name} -> {cave.name}")
            if self.can_enter(cave, current_path):
                has_routes = self.get_routes(cave, end, current_path)
                print("Valid routes:", [[cave.name for cave in route] for route in has_routes])
                if has_routes:
                    routes.extend(has_routes)
            else:
                print(f"Invalid move")
        print(f"Found routes in total: {[[cave.name for cave in route] for route in routes]}")

        return routes

def main():
    with open("input", 'r') as f:
        inp = f.read().splitlines()
    system = CaveSystem()
    for route in inp:
        system.add_route(route)
    
    # Traverse route
    paths = system.traverse_all_paths()
    print("All paths:", [[cave.name for cave in path] for path in paths])
    print(len(paths))

if __name__ == "__main__":
    main()