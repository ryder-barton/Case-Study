import pandas as pd

# Load the CSV file into a DataFrame
file = '/Users/ryderbarton/Documents/CASE STUDY/Editable Data/202310-divvy-tripdata.csv'
data = pd.read_csv(file)

# Split the DataFrame into two parts
split_index = len(data) // 2
part1 = data.iloc[:split_index]
part2 = data.iloc[split_index:]

# Save the split parts into separate CSV files
part1.to_csv('202310-divvy-tripdata-part1.csv', index=False)
part2.to_csv('202310-divvy-tripdata-part2.csv', index=False)