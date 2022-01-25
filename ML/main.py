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

# All zeros matrix
c = np.zeros((2, 3))
print(c)

# All 1s matrix
c = np.ones((4,2,2))
print(c)

# Any other number
c = np.full((2, 2), 99)
print(c)

# Random decimal numbers
c = np.random.rand(4,2)
print(c)

# Random integer values
c = np.random.randint(7, size=(4, 2))
print(c)

# The identity matrix
c = np.identity(5)
print(c)

# Repeat an array
arr = np.array([[1,2,3]])
r1 = np.repeat(arr,3,axis=0)
print(r1)

# Copying arrays
a = np.array([1,2,3])
b = a.copy()
print(a)
print(b)
b[0] = 3
print(a)
print(b)


# <==============================================================================================================>
#                                  LINEAR ALGEBRA
# <==============================================================================================================>


a = np.ones((2, 3))
print(a)
b = np.full((3, 2), 2)
print(b)

# Matrix multiplication
print(np.matmul(a, b))

# Determinant
c = np.identity(3)
deter = np.linalg.det(c)
print(deter)


# <==============================================================================================================>
#                                  STATISTICS
# <==============================================================================================================>


stats = np.array([[1,2,3],[4,5,6]])
print(stats)
mn = np.min(stats) # Minimum
mx = np.max(stats) # Maximum
sm = np.sum(stats) # Sum
print(mn, mx, sm)