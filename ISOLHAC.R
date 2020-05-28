# Initialise libraries
library(tidyverse)

# Set filepath and working directory
filepath <- file.path(
  "C:/Users/mrbil/Desktop/ISOLHAC"
)
setwd(filepath)

# Import data
data <- read_csv("data.csv")

# Generate plot
p1 <- ggplot(data = data, mapping = aes(
  x = data$GameNumber,
  y = data$`xGF%`,
  colour = data$Goalie
)) +
  geom_line() +
  ylim(0, 100) +
  labs(
    title = "David Rittich vs Cam Talbot, xGF%, 2019-20",
    subtitle = "Comparing the performances of two goalies",
    caption = "Chart by Bill Tran (@mrbilltran) | thewincolumn.ca |",
    "data from Natural Stat Trick | Visualisation created for ISOLHAC"
  ) +
  theme_light()
p1

# Save as PDF
ggsave("ISOLHAC_Plot.pdf", width = 8, height = 4, units = "in")