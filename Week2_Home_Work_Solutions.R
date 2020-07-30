library(tidyverse)
read_csv('turbo_data.csv') -> df

df %>% head()

#1) ----
( df %>%
  filter(Marka=='Lexus') %>% 
  select(Qiymet) %>% 
  arrange(Qiymet %>% as.numeric() ) )[[1]][1]

df %>%
  filter(Marka=='Lexus') %>% 
  select(Qiymet) %>% 
  arrange(Qiymet %>% as.numeric()) %>% 
  view() #When you view, it appears as named "."

df %>%
  filter(Marka=='Lexus') %>% 
  select(Qiymet) %>% 
  arrange(Qiymet %>% as.numeric()) %>% 
  .[[1]] %>% 
  .[1]

#2) ----

df %>% 
  filter(Yeni=='Bəli') %>% 
  filter(Marka=="Lexus") %>% 
  select(Qiymet) %>% 
  arrange(desc(Qiymet)) %>% 
  .[[1]] %>% 
  .[1]

#3) ----

df %>% 
  arrange(Qiymet %>% desc()) %>% 
  select(Marka) %>% 
  .[[1]] %>% 
  .[1]

#4) ----

df %>% 
  filter(Marka=='BMW') %>% 
  select(Reng) %>% 
  group_by(Reng) %>% 
  count() %>% 
  arrange(desc(n)) %>% 
  .[1,1] %>% 
  .[[1]]

#5) ----

df %>% 
  filter(Marka=='Porsche' & Yeni=='Bəli' & Reng=='Qara') %>% 
  count() %>% 
  .[[1]]

#6) ----

df %>% 
  filter(sign=="AZN", 
         Oturucu=='Tam') %>% 
  group_by(Marka) %>% 
  summarise(max(Qiymet)) %>% 
  filter(Marka=='Mercedes') %>% 
  .[[2]]

df %>% 
  filter(sign=="AZN", 
         Oturucu=='Tam') %>% 
  group_by(Marka) %>% 
  summarise(max(Qiymet)) %>% 
  filter(Marka=='Mercedes') %>% 
  .$`max(Qiymet)`

#7 ----

df %>% 
  filter(Yeni=='Bəli', 
         Marka=='Mercedes',
         Model=='E 200' | Model=='E220') %>% 
  count()

#8 ----
df %>% 
  select(Reng) %>% 
  unique() %>% 
  count()

df %>% 
  select(Reng) %>% 
  unique() %>% 
  .[[1]] %>% 
  length()
  
#9 ----

df %>% 
  select(Reng) %>% 
  unique() %>% 
  .[[1]] %>% 
  .[1] -> ag

df %>% 
  filter(Marka=='Opel',
         Reng==ag) %>% 
  select(Qiymet) %>% 
  .[[1]] %>% 
  median()

#10 ----

df$Ban_novu %>%
  unique() %>% 
  .[1] -> SUV

df %>% 
  filter(Marka=='Nissan', 
         Ban_novu==SUV) %>% 
  count() %>% 
  .[[1]]


  
  

