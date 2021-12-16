import numpy as np
import matplotlib.pyplot as plt
np.set_printoptions(linewidth=150, suppress=True)


class Payload:
    def VersionSum(self):
        vsum = 0
        if hasattr(self, "packets"):
            print(f"Adding versions from {len(self.packets)} packets")
            for packet in self.packets:
                vsum += packet.VersionSum()
        return vsum


class LiteralValue(Payload):
    def __init__(self, payload_str: str):
        print(f"Reading literal value {payload_str}")
        self.consumed = 0
        self.literal = ""
        for chunk in self.ChunkString(payload_str):
            stop = (chunk[0] == "0")
            self.literal = self.literal + chunk[1:]
            self.consumed += 5
            if stop:
                break
        self.literal = int(self.literal, 2)
        print(self.literal)
        print(f"Consumed {self.consumed} bits for literal value")

    def Value(self):
        print(f"Returning literal value {self.literal}")
        return self.literal, str(self.literal)
    
    def ChunkString(self, payload: str, size: int = 5):
        idx = 0
        while size*idx <= len(payload)-5:
            yield payload[size*idx:size*(idx+1)]
            idx += 1
        raise StopIteration


class Operator(Payload):
    @staticmethod
    def FromType(type: int):
        typeMap = {
            0: SumPacket,
            1: ProductPacket,
            2: MinimumPacket,
            3: MaximumPacket,
            5: GreaterThanPacket,
            6: LessThanPacket,
            7: EqualToPacket
        }
        return typeMap[type]

    def __init__(self, payload_str: str):
        print(f"Reading {self.__class__.__name__} operator {payload_str}")
        self.lengthTypeID = int(payload_str[0])
        payload_str = payload_str[1:]  # Consumed bit 1
        self.packets = []
        self.consumed = 1
        if self.lengthTypeID == 0:
            length = int(payload_str[:15], 2)
            print(f"Subpackages have total length {length}")
            payload_str = payload_str[15:]
            self.consumed += 15
            length += self.consumed  # Length counts from here
            while self.consumed < length:
                packet = Packet(payload_str)
                self.packets.append(packet)
                payload_str = payload_str[packet.consumed:]
                self.consumed += packet.consumed
        else:  # == 1
            numpackets = int(payload_str[:11], 2)
            payload_str = payload_str[11:]
            self.consumed += 11
            print(f"We have {numpackets} subpackets")
            for idx in range(numpackets):
                print(f"Reading packet #{idx}")
                packet = Packet(payload_str)
                self.packets.append(packet)
                payload_str = payload_str[packet.consumed:]
                self.consumed += packet.consumed
        print(f"Consumed {self.consumed} bits for operator")


class SumPacket(Operator):
    def Value(self):
        print(f"Returning sum of values:")
        vals = []
        ops = []
        for packet in self.packets:
            subval, subop = packet.payload.Value()
            vals.append(subval)
            ops.append(subop)
        val = sum(vals)
        op = "(" + "+".join(ops) + ")"
        return  val, op


class ProductPacket(Operator):
    def Value(self):
        vals = []
        ops = []
        for packet in self.packets:
            subval, subop = packet.payload.Value()
            vals.append(subval)
            ops.append(subop)
        print(f"Returning the product of values:")
        prod = 1
        for value in vals:
            prod *= value
        return prod, "(" + "*".join(ops) + ")"


class MinimumPacket(Operator):
    def Value(self):
        print(f"Returning the minimum of values:")
        vals = []
        ops = []
        for packet in self.packets:
            subval, subop = packet.payload.Value()
            vals.append(subval)
            ops.append(subop)
        return min(vals), f"min({','.join([op for op in ops])})"
        

class MaximumPacket(Operator):
    def Value(self):
        print(f"Returning the minimum of values:")
        vals = []
        ops = []
        for packet in self.packets:
            subval, subop = packet.payload.Value()
            vals.append(subval)
            ops.append(subop)
        return max(vals), f"max({','.join([op for op in ops])})"


class GreaterThanPacket(Operator):
    def Value(self):
        assert len(self.packets) == 2, f"{self.__class__.__name__} has {len(self.packets)} packets, but expects exactly 2."
        val1, op1 = self.packets[0].payload.Value()
        val2, op2 = self.packets[1].payload.Value()
        val = 1 if val1 > val2 else 0
        return val, f"({op1} > {op2})"


class LessThanPacket(Operator):
    def Value(self):
        assert len(self.packets) == 2, f"{self.__class__.__name__} has {len(self.packets)} packets, but expects exactly 2."
        val1, op1 = self.packets[0].payload.Value()
        val2, op2 = self.packets[1].payload.Value()
        val = 1 if val1 < val2 else 0
        return val, f"({op1} < {op2})"


class EqualToPacket(Operator):
    def Value(self):
        assert len(self.packets) == 2, f"{self.__class__.__name__} has {len(self.packets)} packets, but expects exactly 2."
        val1, op1 = self.packets[0].payload.Value()
        val2, op2 = self.packets[1].payload.Value()
        val = 1 if val1 == val2 else 0
        return val, f"({op1} == {op2})"


class Header:
    def __init__(self, header_str: str):
        print(f"Reading header {header_str}")
        self.version = int(header_str[:3], 2)
        print(f"Version {self.version}")
        typeID = int(header_str[3:], 2)
        if typeID == 4:
            self.payloadType = LiteralValue
        else:
            self.payloadType = Operator.FromType(typeID)
        self.consumed = 6  # Always true for now
        print(f"Consumed {self.consumed} bits for header")

class Packet:
    def __init__(self, packet_str: str):
        print(f"Reading packet {packet_str}")
        self.header = Header(packet_str[:6])
        self.payload = self.header.payloadType(packet_str[6:])
        self.consumed = self.header.consumed + self.payload.consumed
        print(f"Consumed {self.consumed} bits for packet")
    
    def VersionSum(self):
        print(f"Adding {self.header.version} to version sum")
        vsum = self.header.version
        vsum += self.payload.VersionSum()
        return vsum

def main():
    # Parse input
    with open("input", 'r') as f:
        inp = f.read().splitlines()[0]
    print(inp)

    # Count leading zeros
    numzeros = 0
    for char in inp:
        if char == '0':
            numzeros += 1
        else:
            break

    # Convert to padded binary number
    packet = bin(int(inp,16))[2:]  # Remove leading "0b" characters
    # left fill to get to multiple of 4
    fillnum = 4 - len(packet) % 4
    fillnum = 0 if fillnum == 4 else fillnum
    packet = "0"*numzeros*4 + packet.zfill(fillnum + len(packet))
    print(f'Filled {fillnum} 0s, {len(packet)}')
    print(packet)
    packet = Packet(packet)
    
    # Traverse package structure and add all versions
    print("Version sum:", packet.VersionSum())
    print(packet.payload.Value())


if __name__ == "__main__":
    main()