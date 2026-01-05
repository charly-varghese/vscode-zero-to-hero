import sys
import site

print("Python Version:")
print(sys.version)
print("-" * 40)

print("Python Executable:")
print(sys.executable)
print("-" * 40)

print("Installed Packages Location:")
print(site.getsitepackages())
