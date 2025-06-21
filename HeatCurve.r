library(ggplot2)
library(viridis)
library(plotly)

kmeans <- read.csv("codes_01_energy_demand/HeatingDemand_kmeans.csv")
kmeans$Heating_MW <- kmeans$Heating/kmeans$No_hours
kmeans$no <- 1:5
kmeans <- kmeans[-nrow(kmeans), ]
kmeans <- kmeans[order(-kmeans$Heating_MW), ] #Sort large to small


Qheating_kmeans <- rep(kmeans$Heating_MW, kmeans$No_hours)
Hour_no <- 1:sum(kmeans$No_hours)



kmeans_df <- data.frame(
    Hour = Hour_no,
    Heating = Qheating_kmeans/1000,
    HeatingCategory = factor(rep(kmeans$no, kmeans$No_hours))
)
levels(kmeans_df$HeatingCategory) <- c("Typical period 1", "Typical period 2", "Typical period 3", "Typical period 4")

original_data <- read.csv("codes_01_energy_demand/HeatingDemand_all_dp.csv")
original_data <- original_data[order(-original_data$Heating), ]
original_data$hours <- 1 : nrow(original_data)

og_df <- data.frame(
    Hour = original_data$hours,
    Heating = original_data$Heating/1000
)

monthly_data <- read.csv("codes_01_energy_demand/HeatingDemand_monthly.csv")
monthly_data$Heating_MW <- monthly_data$Heating/monthly_data$no_hrs
monthly_data$Month <- c("January", "February", "March", "April", "May", "June", 
            "July", "August", "September", "October", "November", "December","Extreme Conditions")
monthly_data <- monthly_data[order(-monthly_data$Heating_MW), ]
monthly_data$Month <- factor(monthly_data$Month, levels = c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December", "Extreme Conditions"))

month_df <- data.frame(
    Hour = 1:sum(monthly_data$no_hrs),
    Heating = rep(monthly_data$Heating_MW/1000, monthly_data$no_hrs),
    HeatingCategory = factor(rep(monthly_data$Month, monthly_data$no_hrs))
)

# kmeans data

heat_curve <- ggplot() + 
    geom_line(data = og_df, aes(x = Hour, y = Heating)) +
    geom_point(data = kmeans_df,aes(x = Hour, y = Heating, color = HeatingCategory), size = 1) +
    labs(x = "Time [hours]", y = "Heating demand [MW]", color = "") +
    scale_color_viridis(discrete = TRUE) +
    theme(panel.background = element_rect(fill = "white"),
    axis.line = element_line(linewidth = 0.5, linetype = "solid", colour = "black"))
kmean_int <- ggplotly(heat_curve) %>% layout(legend = list(x = 0.5, y = 0.9))

# monthly data
heat_curve_month <- ggplot() +
    geom_line(data = og_df, aes(x = Hour, y = Heating)) +
    geom_point(data = month_df,aes(x = Hour, y = Heating, color = HeatingCategory), size = 1) +
    labs(x = "Time [hours]", y = "Heating demand [MW]", color = "") +
    # scale_color_viridis(discrete = TRUE) + 
    theme(panel.background = element_rect(fill = "white"),
    axis.line = element_line(linewidth = 0.5, linetype = "solid", colour = "black")) 
month_int <- ggplotly(heat_curve_month) %>% layout(legend = list(x = 0.4, y = 1.0, traceorder = "normal",bgcolor = "rgba(0, 0, 0, 0)"))
month_int

total_heating <- data.frame(
    Label = c("Actual data","Monthly averages","kmeans"),
    Value = rbind(c(sum(original_data$Heating)),c(sum(monthly_data$Heating)),c(sum(kmeans$Heating)))/1000
)

bar_gg <- ggplot(total_heating, aes(x = Label, y = Value, fill = Label)) +
    geom_bar(stat = "identity", position = "dodge", width = 0.6) + 
    labs(x = "Clustering method", y = "Annual heating demand [MWh/year]", fill = "") +
    theme(legend.position="none") +
    scale_fill_viridis(discrete = TRUE)
heating_bar <- ggplotly(bar_gg)

