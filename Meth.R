library(tidyverse)
library(here)

tv_hrs_tab <-gss_cat %>% 
  group_by(marital)%>% 
  summarise(mean_tel_hours = mean(tvhours, na.rm = T))
write_csv(tv_hrs_tab, here("tv_hrs_by_Marital.csv"))

