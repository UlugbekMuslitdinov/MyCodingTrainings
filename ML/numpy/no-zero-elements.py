import numpy as np

is_zero = 1
arr = np.array([[1,2,3,4,5,6,7,8,9],[9,8,7,4,5,6,1,2,3]])

for row in arr:
    for num in row:
        if num == 0:
            is_zero = 0
        else:
            continue

if is_zero == 0:
    print("Has zero")
else:
    print("NO zeros")