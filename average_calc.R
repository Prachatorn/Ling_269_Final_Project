library("dplyr")

taboo_original <- read.csv("Excel Sheet/Taboo Context Survey  (Responses) - Form Responses 1.csv", stringsAsFactors = FALSE)
males <- taboo_original %>%
  filter(Gender == "Male")
write.csv(males, file = "Excel Sheet/Males.csv", row.names = FALSE)
females <- taboo_original %>%
  filter(Gender == "Female")
write.csv(females, file = "Excel Sheet/Females.csv", row.names = FALSE)


rm(list=ls())
taboo <- read.csv("Excel Sheet/Taboo_context_survey.csv")
males <- taboo %>%
  filter(Gender == "Male")
females <- taboo %>%
  filter(Gender == "Female")

# Dick_1 / We were playing baseball yesterday, and I got hit right in the Dick!

Dick_1_male <- round(mean(males$Dick_1), 2)
Dick_1_female <- round(mean(females$Dick_1), 2)
Dick_1_taboo <- round(mean(taboo$Dick_1), 2)

Dick_1 <- c(Dick_1_male, Dick_1_female, Dick_1_taboo)

# Cunt_1 / My Cunt has been itchy all morning today.

Cunt_1_male <- round(mean(males$Cunt_1), 2)
Cunt_1_female <- round(mean(females$Cunt_1), 2)
Cunt_1_taboo <- round(mean(taboo$Cunt_1), 2)

Cunt_1 <- c(Cunt_1_male, Cunt_1_female, Cunt_1_taboo)

# Fuck_1 / I will Fuck my wife when she gets home from work.

Fuck_1_male <- round(mean(males$Fuck_1), 2)
Fuck_1_female <- round(mean(females$Fuck_1), 2)
Fuck_1_taboo <- round(mean(taboo$Fuck_1), 2)

Fuck_1 <- c(Fuck_1_male, Fuck_1_female, Fuck_1_taboo)

# Ass_1 / The campus smells like ass, I can't even focus because I’m trying to breathe normally.

Ass_1_male <- round(mean(males$Ass_1), 2)
Ass_1_female <- round(mean(females$Ass_1), 2)
Ass_1_taboo <- round(mean(taboo$Ass_1), 2)

Ass_1 <- c(Ass_1_male, Ass_1_female, Ass_1_taboo)

# Tit_1 / That man over there has some really nice Tits.

Tit_1_male <- round(mean(males$Tit_1), 2)
Tit_1_female <- round(mean(females$Tit_1), 2)
Tit_1_taboo <- round(mean(taboo$Tit_1), 2)

Tit_1 <- c(Tit_1_male, Tit_1_female, Tit_1_taboo)

# Cunt_2 / The person who hit my car is such a Cunt!

Cunt_2_male <- round(mean(males$Cunt_2), 2)
Cunt_2_female <- round(mean(females$Cunt_2), 2)
Cunt_2_taboo <- round(mean(taboo$Cunt_2), 2)

Cunt_2 <- c(Cunt_2_male, Cunt_2_female, Cunt_2_taboo)

# Dick_2 / Stop saying stuff like that, you Dick!

Dick_2_male <- round(mean(males$Dick_2), 2)
Dick_2_female <- round(mean(females$Dick_2), 2)
Dick_2_taboo <- round(mean(taboo$Dick_2), 2)

Dick_2 <- c(Dick_2_male, Dick_2_female, Dick_2_taboo)

# Ass_2 / I hate texting, especially when I get a dry-Ass reply

Ass_2_male <- round(mean(males$Ass_2), 2)
Ass_2_female <- round(mean(females$Ass_2), 2)
Ass_2_taboo <- round(mean(taboo$Ass_2), 2)

Ass_2 <- c(Ass_2_male, Ass_2_female, Ass_2_taboo)

# Fuck_2 / Fuck off! I am trying to do my homework.

Fuck_2_male <- round(mean(males$Fuck_2), 2)
Fuck_2_female <- round(mean(females$Fuck_2), 2)
Fuck_2_taboo <- round(mean(taboo$Fuck_2), 2)

Fuck_2 <- c(Fuck_2_male, Fuck_2_female, Fuck_2_taboo)

# Tits_2 / Hey, sugar-Tits, can I get your digits.

Tits_2_male <- round(mean(males$Tits_2), 2)
Tits_2_female <- round(mean(females$Tits_2), 2)
Tits_2_taboo <- round(mean(taboo$Tits_2), 2)

Tits_2 <- c(Tits_2_male, Tits_2_female, Tits_2_taboo)

# Ass_3 / I cannot stand his annoying Ass.

Ass_3_male <- round(mean(males$Ass_3), 2)
Ass_3_female <- round(mean(females$Ass_3), 2)
Ass_3_taboo <- round(mean(taboo$Ass_3), 2)

Ass_3 <- c(Ass_3_male, Ass_3_female, Ass_3_taboo)

# Fuck_3 / Fuck! I think I’ve failed the test.

Fuck_3_male <- round(mean(males$Fuck_3), 2)
Fuck_3_female <- round(mean(females$Fuck_3), 2)
Fuck_3_taboo <- round(mean(taboo$Fuck_3), 2)

Fuck_3 <- c(Fuck_3_male, Fuck_3_female, Fuck_3_taboo)

# Dick_3 / To be honest, that guy is kind of a Dick.

Dick_3_male <- round(mean(males$Dick_3), 2)
Dick_3_female <- round(mean(females$Dick_3), 2)
Dick_3_taboo <- round(mean(taboo$Dick_3), 2)

Dick_3 <- c(Dick_3_male, Dick_3_female, Dick_3_taboo)

# Cunt_3 / Stop being a Cunt to the waitress and order already!

Cunt_3_male <- round(mean(males$Cunt_3), 2)
Cunt_3_female <- round(mean(females$Cunt_3), 2)
Cunt_3_taboo <- round(mean(taboo$Cunt_3), 2)

Cunt_3 <- c(Cunt_3_male, Cunt_3_female, Cunt_3_taboo)

# Tits_3 / Stop looking at my Tits, you pervert!

Tits_3_male <- round(mean(males$Tits_3), 2)
Tits_3_female <- round(mean(females$Tits_3), 2)
Tits_3_taboo <- round(mean(taboo$Tits_3), 2)

Tits_3 <- c(Tits_3_male, Tits_3_female, Tits_3_taboo)

# Writing CSV file

mean_average <- data.frame(Dick_1, Cunt_1, Fuck_1, Ass_1, Tit_1, Cunt_2, Dick_2, Ass_2, Fuck_2, Tits_2, Ass_3, Fuck_3, Dick_3, Cunt_3, Tits_3)
row.names(mean_average)[1] <- "Males"
row.names(mean_average)[2] <- "Females"
row.names(mean_average)[3] <- "Total Average"

write.csv(mean_average, file = "Excel Sheet/mean_average.csv")

# Gender total average

ass_male <- (mean(males$Ass_1) + mean(males$Ass_2) + mean(males$Ass_3)) / 3
dick_male <- (mean(males$Dick_1) + mean(males$Dick_2) + mean(males$Dick_3)) / 3
cunt_male <- (mean(males$Cunt_1) + mean(males$Cunt_2) + mean(males$Cunt_3)) / 3
fuck_male <- (mean(males$Fuck_1) + mean(males$Fuck_2) + mean(males$Fuck_3)) / 3
tits_male <- (mean(males$Tit_1) + mean(males$Tits_2) + mean(males$Tits_3)) / 3

names <- c("dick", "cunt", "fuck", "ass", "tits")

male_average <- data.frame(dick_male, cunt_male, fuck_male, ass_male, tits_male)
male_average <- t(male_average)
colnames(male_average)[1] <- "average"

male_graph <- data.frame(male_average)

png("Graphs/Male_Average.png")
barplot(male_graph$average, main="Male Average Tabooness Score", ylab="Tabooness", names.arg = names, col = "darkblue")
dev.off()

ass_female <- (mean(females$Ass_1) + mean(females$Ass_2) + mean(females$Ass_3)) / 3
dick_female <- (mean(females$Dick_1) + mean(females$Dick_2) + mean(females$Dick_3)) / 3
cunt_female <- (mean(females$Cunt_1) + mean(females$Cunt_2) + mean(females$Cunt_3)) / 3
fuck_female <- (mean(females$Fuck_1) + mean(females$Fuck_2) + mean(females$Fuck_3)) / 3
tits_female <- (mean(females$Tit_1) + mean(females$Tits_2) + mean(females$Tits_3)) / 3

female_average <- data.frame(dick_female, cunt_female, fuck_female, ass_female, tits_female)

female_average <- t(female_average)
colnames(female_average)[1] <- "average"

female_graph <- data.frame(female_average)

png("Graphs/Female_Average.png")
barplot(female_graph$average, main="Female Average Tabooness Score", ylab="Tabooness", names.arg = names, col = "red")
dev.off()