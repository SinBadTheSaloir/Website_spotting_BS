import matplotlib.pyplot as plt
import numpy as np

# Data: Model names, reported NOx emissions (g/km), and actual NOx emissions (g/km)
models = ['BMW X3', 'BMW 320d', 'BMW X5']
reported_emissions = [0.08, 0.09, 0.10]  # Reported emissions during testing
actual_emissions = [0.88, 1.0, 1.2]      # Emissions found in real-world conditions

# Bar width
bar_width = 0.35
# Positions of the bars on the x-axis
r1 = np.arange(len(models))
r2 = [x + bar_width for x in r1]

# Create the bar chart
plt.figure(figsize=(10, 6))
plt.bar(r1, reported_emissions, color='b', width=bar_width, edgecolor='grey', label='Reported Emissions')
plt.bar(r2, actual_emissions, color='r', width=bar_width, edgecolor='grey', label='Actual Emissions')

# Add labels and title
plt.xlabel('BMW Models', fontweight='bold')
plt.ylabel('NOx Emissions (g/km)', fontweight='bold')
plt.title('Reported vs. Actual NOx Emissions of BMW Models')
plt.xticks([r + bar_width/2 for r in range(len(models))], models)
plt.legend()

# Save the figure
plt.savefig('bmw_emissions_comparison.png')

# Display the plot
plt.show()
