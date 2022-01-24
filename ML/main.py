import numpy as np

a = np.array([1, 2, 3])
print(a)

b = np.array([[1,2,3,4],[3,8,9,5]])
print(b)

# Get dimension
print(b.ndim)

# Get shape
print(a.shape)
print(b.shape)

# Get Type
print(a.dtype)
print(b.dtype)

# Set an array with its type
a = np.array([1, 2, 3], dtype='int16')
print(a.dtype)

# Get size
print(a.itemsize)
print(b.itemsize)

# Get total size
print(a.nbytes)
print(b.nbytes)

# Get a specific element
a = np.array([[1,2,3,4,5,6,7],[8,9,10,11,12,13,14]])
print(a[1, 5]) #Returns 13

# Get a specific raw
print(a[1, :])

# Get a specific column
print(a[: , 2])

# Getting a little more fancy [startindex:endindex:stepsize]
print(a[0, 1: 6: 2])

# Changing an element
a[1, 5] = 20
print(a)