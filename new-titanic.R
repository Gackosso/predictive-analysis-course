df_titanic <- read_csv("titanic.csv")
library(tidyverse)
view(df_titanic)
glimpse(df_titanic)

df_titanic$adult_male <- as.factor(df_titanic$adult_male)
class(df_titanic$adult_male)

df_titanic$alone <- as.factor(df_titanic$alone)
class(df_titanic$alone)


df_titanic <- df_titanic %>%
  mutate(adult_male = recode(adult_male, "TRUE" = 1, "FALSE" = 0)) %>% 
  view()

df_titanic <- df_titanic %>%
  mutate(alone = recode(alone, "TRUE" = 1, "FALSE" = 0)) %>% 
  view()
df_titanic$deck <- NULL
view(df_titanic)

df_titanic$age[is.na(df_titanic$age)] <- mean(df_titanic$age, na.rm = TRUE)
view(df_titanic)

# visualization # passenger survived/not survived

# 1. number of passenger survived/not survived

df_titanic %>%
  ggplot(mapping=aes(x=alive, fill=survived)) +
  geom_bar(alpha = 0.5) +
  # facet_wrap(~survived) +
  labs(title="Suvived",
       x = "Survived",
       y = "count of character") +
  theme_minimal() 
  
# 2. number of survived/not survived in each group (sex)
df_titanic %>% 
  ggplot(aes(sex,fill=factor(survived))) +
  geom_bar() +
  labs(title="survived by sex",
       x="Survived",
       y= "count of character")

#scatter plot: 2 numerical variables
df_titanic %>% 
  drop_na(adult_male,survived) %>%
  ggplot(aes(adult_male,survived)) +
  geom_point(aes(color=age,
                 )) +
  geom_smooth(method="lm") +
  labs(title="Adult_male and Survivor of character")
theme_light()

# box plot
df_titanic %>%
  ggplot(mapping=aes(x=age, fill=class)) +
  geom_boxplot() +
  labs(title="age by class",
       x = "Adult_male", "Survived",
       y = "count of character") +
  theme_minimal() 

# 3. number of passenger that didn't survive categorized by class

df_titanic %>%
  filter(survived==0) %>% 
  ggplot(mapping=aes(x=class, fill=survived)) +
  geom_bar(alpha=0.8)
  

# 4. number of death by embarked town
df_titanic %>%
  filter(survived == 0) %>% 
  ggplot(mapping=aes(x=embark_town, fill=survived)) +
  geom_bar() +
  #facet_wrap(~embark_town) +
  labs(title="Number of deaths by Embarkedtown",
       x = "Death",
       y = "count of character") +
  theme_minimal()

# 5.number of adult male survivor by age
df_titanic %>%
  filter(sex=="male") %>% 
  ggplot(mapping=aes(age)) +
  geom_histogram()
  labs(title = "Number of adult male Survivor",
       x = "Age",
       y = "Count of Character") +
    theme_minimal()
  
  
  df_titanic %>%
    #filter(survived %in% c("black", "brown")) %>% 
    ggplot(mapping=aes(x=alive, fill=survived)) +
    geom_bar(alpha = 0.5) +
    # facet_wrap(~gender) +
    labs(title="Suvived",
         x = "Survived",
         y = "count of character") +
    theme_minimal()