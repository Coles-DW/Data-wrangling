# areas list
areas = [11.25, 18.0, 20.0, 10.75, 9.50]

# Code the for loop
for rooms in areas :    
    print(rooms)

# areas list
areas = [11.25, 18.0, 20.0, 10.75, 9.50]

# Change for loop to use enumerate() and update print()
for index, a in enumerate(areas) :
    print("room " + str(index) + ": " + str(a))


# Code the for loop to start index at 1
for index, area in enumerate(areas, start = 1) :
    print("room " + str(index) + ": " + str(area))

# house list of lists
house = [["hallway", 11.25], 
         ["kitchen", 18.0], 
         ["living room", 20.0], 
         ["bedroom", 10.75], 
         ["bathroom", 9.50]]
         
# Build a for loop from scratch
for room in house :    
    x = room[0]
    y = room[1]
    print(f"the {x} is {y} sqm")


Basic for Loop Structure: You saw how to iterate over a list using a simple for loop, printing each element. For example:

for height in fam:
    print(height)
This loop goes through each item in the fam list, assigns it to the variable height, and prints it.

Using enumerate() for Indexing: To access both the index and the value of each item in a list, you used enumerate(). It modifies the loop to produce index-value pairs:

for index, area in enumerate(areas):
    print("room " + str(index) + ": " + str(area))
This allows you to print both the index of the item and its value, making your output more informative.

Adjusting Indexes in Output: You learned to adjust the starting index in the output to be more intuitive (starting from 1 instead of 0) by modifying the index inside the print statement:

for index, area in enumerate(areas):
    print("room " + str(index + 1) + ": " + str(area))
Looping Over List of Lists: Finally, you explored iterating over a list of lists, where each sublist contains multiple pieces of data. You printed formatted strings that include both elements of each sublist, demonstrating a practical way to handle nested lists:

for x in house:
    print("the " + x[0] + " is " + str(x[1]) + " sqm")
