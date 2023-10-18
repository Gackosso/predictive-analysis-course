#Assignment1
#Dataframe
MyData01 <- data.frame(person = c("Stan", "Francine", "Steve", "Roger", "Hayley"), sex = factor(c("M", "F", "M", "M", "F")))
MyData01$person
print(MyData01)

newRecord <- data.frame(person = "Klaus", sex = "M")
MyData01 <- rbind(MyData01, newRecord)
funny <- factor(c("High", "Med", "Low", "High", "Med", "Med"))
MyData01 <- cbind(MyData01, funny)
print(MyData01)