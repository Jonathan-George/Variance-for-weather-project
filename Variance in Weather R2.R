nrow(london_data)

temp <- london_data$TemperatureC

average_temp <- mean(temp)

temperature_var <- var(temp)
print(temperature_var)

temperature_standard_deviation <- sd(temp)


june <- london_data %>% filter(london_data$month == "6")

july <- london_data %>% filter(london_data$month == "7")


print('mean'(june$TemperatureC))
print('mean'(july$TemperatureC))


print(sd(june$TemperatureC))
print(sd(july$TemperatureC))

# Analyze by month
monthly_stats <- london_data %>%
  group_by(month) %>%
  summarize(mean = mean(TemperatureC),
            standard_deviation = sd(TemperatureC))