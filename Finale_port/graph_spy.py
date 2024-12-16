import matplotlib.pyplot as plt

# List of countries where Pegasus spyware was reportedly used without public knowledge
countries = ['United States', 'France', 'Mexico', 'Saudi Arabia', 'India']

# Create a simple bar chart
plt.figure(figsize=(10, 6))
plt.barh(countries, [1] * len(countries), color='red', edgecolor='black')

# Add titles and labels
plt.title('Countries Where Pegasus Spyware Was Used Without Public Knowledge', fontsize=16)
plt.xlabel('Reported Usage', fontsize=12)
plt.yticks(fontsize=12)
plt.xticks([])  # Remove x-axis ticks as they aren't necessary for this visualization

# Save the graph
plt.savefig("pegasus_usage_countries.png", dpi=300)
plt.show()
