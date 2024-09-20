# Load the files
# install.packages(c("ggthemes","ggdark"))

library(dplyr)
library(ggplot2)
library(openintro)
library(ggthemes)
library(ggdark)
# View data
glimpse(mlb)



#Base plot(we do layer by layer)
ggplot(data=mlb, mapping = aes(x = salary)) + geom_histogram(color = "white",
                                                             fill = "firebrick", bins = 10)+
  labs(
    title = "Salary of MLB players",
    subtitle = "2010 Season",
    x = "Salary ($1000)",
    y = "Number of players",
    caption = "Source: USA Today"
  )+
  scale_x_continuous(break = c(3000, 6000, 9000, 12000, 15000, 18000, 21000, 24000, 27000, 30000)) +
  theme(
    panel.backround = element_rect(fill = "lightcyan2"),
    plot.backround = element_rect(fill = "lightcyan2"),
    text = element_text(size=20),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_line(color = "blue"),
    plot.title = element_text(face = "italic")
    
  )

#We want to set color, title(lables), detailed, and add to it 
