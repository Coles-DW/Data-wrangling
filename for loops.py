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
