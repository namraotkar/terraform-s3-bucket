name = "Nikhil Amraotkar"

# Print the name 10 times
for _ in range(10):
    print(name)

# Write the name 10 times to a file named output.txt
with open("output.txt", "w") as file:
    for _ in range(10):
        file.write(name + "\n")
