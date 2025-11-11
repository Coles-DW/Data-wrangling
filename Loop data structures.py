##Dictionairies
# Definition of dictionary
europe = {'spain':'madrid', 'france':'paris', 'germany':'berlin',
          'norway':'oslo', 'italy':'rome', 'poland':'warsaw', 'austria':'vienna' }
          
# Iterate over europe
for x, y in europe.items() :    
    print("the capital of " + x + " is " + str(y)) 

##Numpy arrays
# Import numpy as np
import numpy as np

# For loop over np_height
for x in np_height :    
    print(str(x) + " inches")

##2d Numpy arrays
# For loop over np_baseball
for x in np.nditer(np_baseball) :   
    print(x)

##Pandas DFs
# Import cars data
import pandas as pd
cars = pd.read_csv('cars.csv', index_col = 0)

# Iterate over rows of cars
for lab, row in cars.iterrows() :   
   print(lab)
   print(row)

# Import cars data
import pandas as pd
cars = pd.read_csv('cars.csv', index_col = 0)

# Adapt for loop
for lab, row in cars.iterrows() :
    print(lab + ": " + str(row["cars_per_cap"]))

# Import cars data
import pandas as pd
cars = pd.read_csv('cars.csv', index_col = 0)

# Code for loop that adds COUNTRY column and generates capitalised forms for country names
for lab, row in cars.iterrows() :
    cars.loc[lab, "COUNTRY"] = row["country"].upper()


# Print cars
print(cars)

##Quicker than above
# Import cars data
import pandas as pd
cars = pd.read_csv('cars.csv', index_col = 0)

# Use .apply(str.upper)
cars["COUNTRY"] = cars["country"].apply(str.upper)

print(cars)
