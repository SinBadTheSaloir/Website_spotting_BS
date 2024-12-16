# Load necessary libraries
library(ggplot2)

# Prepare the data
pegasus_data <- data.frame(
  Target_Type = c("Terrorists", "Criminals", "Journalists", "Human Rights Activists",
                  "Political Opponents", "Lawyers", "Diplomats", "Heads of State"),
  Category = c("Claimed", "Claimed", "Actual", "Actual", "Actual", "Actual", "Actual", "Actual"),
  Count = c(50, 60, 80, 30, 40, 20, 15, 10) # Example values; adjust with real data if available
)

# Create the bar chart
spyware_chart <- ggplot(pegasus_data, aes(x = Target_Type, y = Count, fill = Category)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Comparison of Claimed vs Actual Target Types for Pegasus Spyware",
       x = "Target Type",
       y = "Count",
       fill = "Category") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Save the chart as a PNG file
ggsave("spy_graph.png", spyware_chart, width = 10, height = 6, dpi = 300)

# Print a message to confirm the file has been saved
cat("The graph has been saved as 'spy_graph.png' in the current working directory.")

