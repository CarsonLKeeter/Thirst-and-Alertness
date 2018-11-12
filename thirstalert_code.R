library(rmcorr)
library(ggplot2)
library(tidyverse)
library(tidyr)

ggplot(df, 
       aes(
         x = TC, 
         y = AC, 
         group = factor(
           Num
           )
         ), 
       color = factor(
         Num
         )
       ) + 
  geom_point(
    aes(
      color = factor(
        Num
        )
      ), 
    show.legend = FALSE
    ) + 
  geom_line(
    aes(
      y = my_rmc$model$fitted.values
      ), 
    linetype = 2) + 
  labs(
    x = "Thirst Change", 
    y = "Alert Change", 
    title = "Alertness and Thirst Change", 
    subtitle = "p-value < 0.0001, rrm = .2969", 
    caption = "Brought to you by: University of Wyoming Hyrdation Physiology Lab"
    )