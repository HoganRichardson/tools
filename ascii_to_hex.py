## Convert ASCII to hex

from pwn import *
import sys

BYTE = 4

text = sys.argv[1]

reverse = text[::-1]

for i in range(0, len(reverse), BYTE):
    segment = [reverse[i:i+BYTE]]
    if len(segment[0]) != BYTE:
        segment[0] = segment[0] + '0'*(BYTE - len(segment[0]))
    
    print(hex(u32(segment[0][::-1])))
