import numpy as np

# Python list vs NumPy array
py_list = [1, 2, 3, 4, 5]
np_array = np.array(py_list)

print("Python list:", py_list)
print("NumPy array:", np_array)

print("\nArray type:", type(np_array))
print("Shape:", np_array.shape)
print("Data type:", np_array.dtype)

# Vectorized operations
print("\nVectorized operations:")
print("Array * 2:", np_array * 2)
print("Array + 10:", np_array + 10)

# Create arrays
zeros = np.zeros((3, 3))
ones = np.ones((2, 4))
range_array = np.arange(0, 10, 2)

print("\nZeros array:\n", zeros)
print("\nOnes array:\n", ones)
print("\nRange array:", range_array)

# Indexing and slicing
print("\nFirst element:", np_array[0])
print("Slice [1:4]:", np_array[1:4])
