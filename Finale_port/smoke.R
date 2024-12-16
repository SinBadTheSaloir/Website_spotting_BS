# Load necessary libraries
library(ggplot2)

# Placeholder data (replace with real-world data)
data <- data.frame(
  Year = seq(1940, 2000, by = 10),
  Cigarette_Consumption = c(180, 220, 300, 400, 350, 280, 200), # in billions
  Smoking_Related_Deaths = c(0.2, 0.5, 1.0, 2.5, 3.5, 4.0, 4.5) # in millions
)

# Create the first graph: Cigarette Consumption vs Smoking-Related Deaths
consumption_deaths_plot <- ggplot(data, aes(x = Year)) +
  geom_line(aes(y = Cigarette_Consumption, color = "Cigarette Consumption"), size = 1.2) +
  geom_line(aes(y = Smoking_Related_Deaths * 100, color = "Smoking-Related Deaths"), size = 1.2, linetype = "dashed") +
  scale_y_continuous(
    name = "Cigarette Consumption (Billions)",
    sec.axis = sec_axis(~./100, name = "Smoking-Related Deaths (Millions)")
  ) +
  labs(title = "Cigarette Consumption vs Smoking-Related Deaths",
       x = "Year",
       color = "Metric") +
  theme_minimal()

# Display the first graph
print(consumption_deaths_plot)

# Save the first graph
ggsave("consumption_vs_deaths.png", consumption_deaths_plot, width = 10, height = 6, dpi = 300)

# Placeholder data for the second graph (replace with real-world data)
ad_data <- data.frame(
  Year = seq(1940, 1970, by = 10),
  Marketing_Spend = c(10, 50, 100, 200), # in millions of USD
  Studies_on_Risks = c(2, 10, 20, 50) # number of studies
)

# Create the separate bar graph: Marketing Spend
marketing_spend_plot <- ggplot(ad_data, aes(x = Year, y = Marketing_Spend)) +
  geom_bar(stat = "identity", fill = "steelblue", color = "black") +
  labs(title = "Marketing Spend on Cigarette Advertising",
       x = "Year",
       y = "Marketing Spend (Millions USD)") +
  theme_minimal()

# Display the bar graph
print(marketing_spend_plot)

# Save the bar graph
ggsave("marketing_spend.png", marketing_spend_plot, width = 10, height = 6, dpi = 300)

# Create the separate line graph: Studies on Smoking Risks
studies_on_risks_plot <- ggplot(ad_data, aes(x = Year, y = Studies_on_Risks)) +
  geom_line(color = "firebrick", size = 1.2) +
  geom_point(color = "firebrick", size = 3) +
  labs(title = "Studies on Smoking Risks Over Time",
       x = "Year",
       y = "Number of Studies") +
  theme_minimal()

# Display the line graph
print(studies_on_risks_plot)

# Save the line graph
ggsave("studies_on_risks.png", studies_on_risks_plot, width = 10, height = 6, dpi = 300)

# Confirmation message
cat("The graphs have been saved as 'consumption_vs_deaths.png', 'marketing_spend.png', and 'studies_on_risks.png' in the working directory.")

