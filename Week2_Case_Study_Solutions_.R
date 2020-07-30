df <- read_csv('bina_az.csv')

#1) ----
df <- select(df, -X1)

#2) ----
df %>% 
  select(ID, everything()) -> df

#3) ----
df %>% 
  select(contains('Adres'))

#4) ----
df %>% 
  na.omit() %>% 
  transmute(newcol= sahe/as.numeric(otaq))


#5) ----

df %>% 
  filter(nov=='Köhnə tikili') %>% 
  select(qiymet) %>% 
  arrange(desc(qiymet)) %>% 
  .[[1]] %>% 
  .[1]

#6) -----
  
df %>% 
  select(contains('Adres')) %>%
  gather() %>% 
  select(value) %>% 
  unique()








