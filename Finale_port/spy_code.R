# Load necessary libraries
library(ggplot2)

# Prepare the data
pegasus_data <- data.frame(
  Category = c("Claimed", "Claimed", "Actual", "Actual", "Actual", "Actual", "Actual", "Actual"),
  Target_Type = c("Terrorists", "Criminals", "Journalists", "Human Rights Activists", 
                  "Political Opponents", "Lawyers", "Diplomats", "Heads of State"),
  Count = c(1, 1, 1, 1, 1, 1, 1, 1) # Placeholder counts for visualization
)

# Custom color palette for better contrast
custom_colors <- c(
  "Terrorists" = "#1b9e77",
  "Criminals" = "#d95f02",
  "Journalists" = "#7570b3",
  "Human Rights Activists" = "#e7298a",
  "Political Opponents" = "#66a61e",
  "Lawyers" = "#e6ab02",
  "Diplomats" = "#a6761d",
  "Heads of State" = "#666666"
)

# Create the stacked bar chart
stacked_chart <- ggplot(pegasus_data, aes(x = Category, fill = Target_Type)) +
  geom_bar(stat = "count", width = 0.7, color = "black") +
  scale_fill_manual(values = custom_colors) +
  labs(title = "Claimed vs Actual Target Types for Pegasus Spyware",
       x = "Category",
       y = "Count (Representation Only)",
       fill = "Target Types") +
  theme_minimal() +
  theme(axis.text.x = element_text(size = 12, face = "bold"),
        plot.title = element_text(hjust = 0.5, face = "bold"))

# Display the graph
print(stacked_chart)

# Save the graph as a PNG file
ggsave("spy_targets_graph.png", stacked_chart, width = 10, height = 6, dpi = 300)

# Confirm message for successful save
cat("The graph has been saved as 'spy_targets_graph.png' in the current working directory.\n")


