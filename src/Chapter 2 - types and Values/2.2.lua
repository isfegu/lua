print(.0e12) -->  0
-- print(.e12) -->  unexpected symbol
-- print(0.0e) -->  malformed number
print(0x12) -->  18
-- print(0xABFG) --> ')' expected near 'G'
print(0xA) -->  10
print(FFFF) -->  nil
print(0xFFFFFFFF) -->  4294967295
-- print(0x) -->  malformed number
print(0x1P10) -->  1024.0
print(0.1e1) -->  1.0
print(0x0.1p1) -->  0.125