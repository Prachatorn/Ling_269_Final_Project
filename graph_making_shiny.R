library("dplyr")
library("plotly")
library("plyr")
library("ggplot2")
library("reshape2")

# We were playing baseball yesterday, and I got hit right in the dick! / Dick_1
swear_words <- read.csv("Excel Sheet/Taboo_context_survey.csv", stringsAsFactors = FALSE)

Dick_1_Freq <- swear_words %>%
  select(Gender, Dick_1)

males <- Dick_1_Freq %>%
  filter(Gender == "Male") %>%
  arrange(Dick_1)

females <- Dick_1_Freq %>%
  filter(Gender == "Female") %>%
  arrange(Dick_1)

count(males)
count(females)

taboo <- c(1, 2, 3, 4, 5, 6, 7)
males <- c(5, 2, 5, 0, 0, 1, 0)
females <- c(3, 5, 1, 2, 2, 0, 0)

freq <- data.frame(taboo, males, females)
freq2 <- melt(freq, id.vars = "taboo")

if (max(freq$males) >  max(freq$females)) {
  max = max(freq$males)
} else {
  max = max(freq$females)
}

graph_dick1 <- ggplot(freq2, aes(x = taboo, y = value, fill = variable)) + 
  geom_bar(stat="identity", position = "dodge") +
  scale_x_discrete(name ="Tabooness", limits = c("1","2","3", "4", "5", "6", "7")) + 
  scale_y_discrete(name = "Frequency", limits = seq(from = 0, to = as.integer(max), by = 1)) +
  ggtitle("We were playing baseball yesterday, and I got hit right in the dick!") +
  labs(fill = "Gender") +
  theme(plot.title = element_text(hjust = 0.5))


# My cunt has been itchy all morning today. / Cunt_1
Cunt_1_Freq <- swear_words %>%
  select(Gender, Cunt_1)

males <- Cunt_1_Freq %>%
  filter(Gender == "Male") %>%
  arrange(Cunt_1)

females <- Cunt_1_Freq %>%
  filter(Gender == "Female") %>%
  arrange(Cunt_1)

count(males)
count(females)

taboo <- c(1, 2, 3, 4, 5, 6, 7)
males <- c(2, 0, 2, 2, 2, 2, 3)
females <- c(0, 0, 1, 5, 3, 1, 3)

freq <- data.frame(taboo, males, females)
freq2 <- melt(freq, id.vars = "taboo")

if (max(freq$males) >  max(freq$females)) {
  max = max(freq$males)
} else {
  max = max(freq$females)
}

graph_cunt1 <- ggplot(freq2, aes(x = taboo, y = value, fill = variable)) + 
  geom_bar(stat="identity", position = "dodge") +
  scale_x_discrete(name ="Tabooness", limits = c("1","2","3", "4", "5", "6", "7")) + 
  scale_y_discrete(name = "Frequency", limits = seq(from = 0, to = as.integer(max), by = 1)) +
  ggtitle("My cunt has been itchy all morning today.") +
  labs(fill = "Gender") +
  theme(plot.title = element_text(hjust = 0.5))

# I will fuck my wife when she gets home from work. / Fuck_1
  
Fuck_1_Freq <- swear_words %>%
  select(Gender, Fuck_1)

males <- Fuck_1_Freq %>%
  filter(Gender == "Male") %>%
  arrange(Fuck_1)

females <- Fuck_1_Freq %>%
  filter(Gender == "Female") %>%
  arrange(Fuck_1)

count(males)
count(females)

taboo <- c(1, 2, 3, 4, 5, 6, 7)
males <- c(2, 0, 0, 2, 2, 4, 3)
females <- c(0, 2, 2, 1, 3, 4, 1)

freq <- data.frame(taboo, males, females)
freq2 <- melt(freq, id.vars = "taboo")

if (max(freq$males) >  max(freq$females)) {
  max = max(freq$males)
} else {
  max = max(freq$females)
}

graph_fuck1 <- ggplot(freq2, aes(x = taboo, y = value, fill = variable)) + 
  geom_bar(stat="identity", position = "dodge") + 
  scale_x_discrete(name ="Tabooness", limits = c("1","2","3", "4", "5", "6", "7")) + 
  scale_y_discrete(name = "Frequency", limits = seq(from = 0, to = as.integer(max), by = 1)) +
  ggtitle("I will fuck my wife when she gets home from work.") +
  labs(fill = "Gender") +
  theme(plot.title = element_text(hjust = 0.5))


# The campus smells like ass, I can't even focus because I’m trying to breathe normally. / Ass_1

Ass_1_Freq <- swear_words %>%
  select(Gender, Ass_1)

males <- Ass_1_Freq %>%
  filter(Gender == "Male") %>%
  arrange(Ass_1)

females <- Ass_1_Freq %>%
  filter(Gender == "Female") %>%
  arrange(Ass_1)

count(males)
count(females)

taboo <- c(1, 2, 3, 4, 5, 6, 7)
males <- c(2, 8, 3, 0, 1, 0, 0)
females <- c(5, 7, 0, 0, 1, 0, 0)

freq <- data.frame(taboo, males, females)
freq2 <- melt(freq, id.vars = "taboo")

if (max(freq$males) >  max(freq$females)) {
  max = max(freq$males)
} else {
  max = max(freq$females)
}

graph_ass1 <- ggplot(freq2, aes(x = taboo, y = value, fill = variable)) + 
  geom_bar(stat="identity", position = "dodge") + 
  scale_x_discrete(name ="Tabooness", limits = c("1","2","3", "4", "5", "6", "7")) + 
  scale_y_discrete(name = "Frequency", limits = seq(from = 0, to = as.integer(max), by = 1)) +
  ggtitle("The campus smells like ass, I can't even focus because I am trying to breathe normally.") +
  labs(fill = "Gender") +
  theme(plot.title = element_text(size = 10.5, hjust = 0.5))


# That man over there has some really nice tits. / Tit_1

Tit_1_Freq <- swear_words %>%
  select(Gender, Tit_1)

males <- Tit_1_Freq %>%
  filter(Gender == "Male") %>%
  arrange(Tit_1)

females <- Tit_1_Freq %>%
  filter(Gender == "Female") %>%
  arrange(Tit_1)

count(males)
count(females)

taboo <- c(1, 2, 3, 4, 5, 6, 7)
males <- c(3, 1, 4, 1, 3, 1, 0)
females <- c(2, 0, 6, 1, 3, 0, 1)

freq <- data.frame(taboo, males, females)
freq2 <- melt(freq, id.vars = "taboo")

if (max(freq$males) >  max(freq$females)) {
  max = max(freq$males)
} else {
  max = max(freq$females)
}

graph_tit1 <- ggplot(freq2, aes(x = taboo, y = value, fill = variable)) + 
  geom_bar(stat="identity", position = "dodge") + 
  scale_x_discrete(name ="Tabooness", limits = c("1","2","3", "4", "5", "6", "7")) + 
  scale_y_discrete(name = "Frequency", limits = seq(from = 0, to = as.integer(max), by = 1)) +
  ggtitle("That man over there has some really nice tits.") +
  labs(fill = "Gender") +
  theme(plot.title = element_text(hjust = 0.5))

# The person who hit my car is such a cunt! / Cunt_2



Cunt_2_Freq <- swear_words %>%
  select(Gender, Cunt_2)

males <- Cunt_2_Freq %>%
  filter(Gender == "Male") %>%
  arrange(Cunt_2)

females <- Cunt_2_Freq %>%
  filter(Gender == "Female") %>%
  arrange(Cunt_2)

count(males)
count(females)

taboo <- c(1, 2, 3, 4, 5, 6, 7)
males <- c(3, 1, 2, 2, 2, 1, 2)
females <- c(2, 1, 1, 2, 4, 3, 0)

freq <- data.frame(taboo, males, females)
freq2 <- melt(freq, id.vars = "taboo")

if (max(freq$males) >  max(freq$females)) {
  max = max(freq$males)
} else {
  max = max(freq$females)
}

graph_cunt2 <- ggplot(freq2, aes(x = taboo, y = value, fill = variable)) + 
  geom_bar(stat="identity", position = "dodge") + 
  scale_x_discrete(name ="Tabooness", limits = c("1","2","3", "4", "5", "6", "7")) + 
  scale_y_discrete(name = "Frequency", limits = seq(from = 0, to = as.integer(max), by = 1)) +
  ggtitle("The person who hit my car is such a cunt!") +
  labs(fill = "Gender") +
  theme(plot.title = element_text(hjust = 0.5))

# Stop saying stuff like that, you dick! / Dick_2



Dick_2_Freq <- swear_words %>%
  select(Gender, Dick_2)

males <- Dick_2_Freq %>%
  filter(Gender == "Male") %>%
  arrange(Dick_2)

females <- Dick_2_Freq %>%
  filter(Gender == "Female") %>%
  arrange(Dick_2)

count(males)
count(females)

taboo <- c(1, 2, 3, 4, 5, 6, 7)
males <- c(6, 1, 4, 1, 1, 0, 0)
females <- c(4, 3, 1, 4, 1, 0, 0)

freq <- data.frame(taboo, males, females)
freq2 <- melt(freq, id.vars = "taboo")

if (max(freq$males) >  max(freq$females)) {
  max = max(freq$males)
} else {
  max = max(freq$females)
}

graph_dick2 <- ggplot(freq2, aes(x = taboo, y = value, fill = variable)) + 
  geom_bar(stat="identity", position = "dodge") + 
  scale_x_discrete(name ="Tabooness", limits = c("1","2","3", "4", "5", "6", "7")) + 
  scale_y_discrete(name = "Frequency", limits = seq(from = 0, to = as.integer(max), by = 1)) +
  ggtitle("Stop saying stuff like that, you dick!") +
  labs(fill = "Gender") +
  theme(plot.title = element_text(hjust = 0.5))


# I hate texting, especially when I get a dry-ass reply. / Ass_2



Ass_2_Freq <- swear_words %>%
  select(Gender, Ass_2)

males <- Ass_2_Freq %>%
  filter(Gender == "Male") %>%
  arrange(Ass_2)

females <- Ass_2_Freq %>%
  filter(Gender == "Female") %>%
  arrange(Ass_2)

count(males)
count(females)

taboo <- c(1, 2, 3, 4, 5, 6, 7)
males <- c(8, 3, 2, 0, 0, 0, 0)
females <- c(9, 2, 1, 1, 0, 0, 0)

freq <- data.frame(taboo, males, females)
freq2 <- melt(freq, id.vars = "taboo")

if (max(freq$males) >  max(freq$females)) {
  max = max(freq$males)
} else {
  max = max(freq$females)
}

graph_ass2 <- ggplot(freq2, aes(x = taboo, y = value, fill = variable)) + 
  geom_bar(stat="identity", position = "dodge") + 
  scale_x_discrete(name ="Tabooness", limits = c("1","2","3", "4", "5", "6", "7")) + 
  scale_y_discrete(name = "Frequency", limits = seq(from = 0, to = as.integer(max), by = 1)) +
  ggtitle("I hate texting, especially when I get a dry-ass reply.") +
  labs(fill = "Gender") +
  theme(plot.title = element_text(hjust = 0.5))


# Fuck off! I am trying to do my homework. / Fuck_2



Fuck_2_Freq <- swear_words %>%
  select(Gender, Fuck_2)

males <- Fuck_2_Freq %>%
  filter(Gender == "Male") %>%
  arrange(Fuck_2)

females <- Fuck_2_Freq %>%
  filter(Gender == "Female") %>%
  arrange(Fuck_2)

count(males)
count(females)

taboo <- c(1, 2, 3, 4, 5, 6, 7)
males <- c(7, 1, 2, 2, 1, 0, 0)
females <- c(3, 5, 3, 0, 2, 0, 0)

freq <- data.frame(taboo, males, females)
freq2 <- melt(freq, id.vars = "taboo")

if (max(freq$males) >  max(freq$females)) {
  max = max(freq$males)
} else {
  max = max(freq$females)
}

graph_fuck2 <- ggplot(freq2, aes(x = taboo, y = value, fill = variable)) + 
  geom_bar(stat="identity", position = "dodge") + 
  scale_x_discrete(name ="Tabooness", limits = c("1","2","3", "4", "5", "6", "7")) + 
  scale_y_discrete(name = "Frequency", limits = seq(from = 0, to = as.integer(max), by = 1)) +
  ggtitle("Fuck off! I am trying to do my homework.") +
  labs(fill = "Gender") +
  theme(plot.title = element_text(hjust = 0.5))


# Hey, sugar-tits, can I get your digits. / Tit_2



Tit_2_Freq <- swear_words %>%
  select(Gender, Tits_2)

males <- Tit_2_Freq %>%
  filter(Gender == "Male") %>%
  arrange(Tits_2)

females <- Tit_2_Freq %>%
  filter(Gender == "Female") %>%
  arrange(Tits_2)

count(males)
count(females)

taboo <- c(1, 2, 3, 4, 5, 6, 7)
males <- c(1, 1, 1, 2, 2, 3, 3)
females <- c(0, 2, 4, 1, 2, 2, 3)

freq <- data.frame(taboo, males, females)
freq2 <- melt(freq, id.vars = "taboo")

if (max(freq$males) >  max(freq$females)) {
  max = max(freq$males)
} else {
  max = max(freq$females)
}

graph_tit2 <- ggplot(freq2, aes(x = taboo, y = value, fill = variable)) + 
  geom_bar(stat="identity", position = "dodge") + 
  scale_x_discrete(name ="Tabooness", limits = c("1","2","3", "4", "5", "6", "7")) + 
  scale_y_discrete(name = "Frequency", limits = seq(from = 0, to = as.integer(max), by = 1)) +
  ggtitle("Hey, sugar-tits, can I get your digits.") +
  labs(fill = "Gender") +
  theme(plot.title = element_text(hjust = 0.5))


# I cannot stand his annoying ass. / Ass_3



Ass_3_Freq <- swear_words %>%
  select(Gender, Ass_3)

males <- Ass_3_Freq %>%
  filter(Gender == "Male") %>%
  arrange(Ass_3)

females <- Ass_3_Freq %>%
  filter(Gender == "Female") %>%
  arrange(Ass_3)

count(males)
count(females)

taboo <- c(1, 2, 3, 4, 5, 6, 7)
males <- c(7, 3, 1, 1, 1, 0, 0)
females <- c(7, 3, 3, 0, 0, 0, 0)

freq <- data.frame(taboo, males, females)
freq2 <- melt(freq, id.vars = "taboo")

if (max(freq$males) >  max(freq$females)) {
  max = max(freq$males)
} else {
  max = max(freq$females)
}

graph_ass3 <- ggplot(freq2, aes(x = taboo, y = value, fill = variable)) + 
  geom_bar(stat="identity", position = "dodge") + 
  scale_x_discrete(name ="Tabooness", limits = c("1","2","3", "4", "5", "6", "7")) + 
  scale_y_discrete(name = "Frequency", limits = seq(from = 0, to = as.integer(max), by = 1)) +
  ggtitle("I cannot stand his annoying ass.") +
  labs(fill = "Gender") +
  theme(plot.title = element_text(hjust = 0.5))


# Fuck! I think I’ve failed the test. / Fuck_3



Fuck_3_Freq <- swear_words %>%
  select(Gender, Fuck_3)

males <- Fuck_3_Freq %>%
  filter(Gender == "Male") %>%
  arrange(Fuck_3)

females <- Fuck_3_Freq %>%
  filter(Gender == "Female") %>%
  arrange(Fuck_3)

count(males)
count(females)

taboo <- c(1, 2, 3, 4, 5, 6, 7)
males <- c(8, 3, 0, 2, 0, 0, 0)
females <- c(7, 3, 2, 1, 0, 0, 0)

freq <- data.frame(taboo, males, females)
freq2 <- melt(freq, id.vars = "taboo")

if (max(freq$males) >  max(freq$females)) {
  max = max(freq$males)
} else {
  max = max(freq$females)
}

graph_fuck3 <- ggplot(freq2, aes(x = taboo, y = value, fill = variable)) + 
  geom_bar(stat="identity", position = "dodge") + 
  scale_x_discrete(name ="Tabooness", limits = c("1","2","3", "4", "5", "6", "7")) + 
  scale_y_discrete(name = "Frequency", limits = seq(from = 0, to = as.integer(max), by = 1)) +
  ggtitle("Fuck! I think I’ve failed the test.") +
  labs(fill = "Gender") +
  theme(plot.title = element_text(hjust = 0.5))

# To be honest, that guy is kind of a dick. / Dick_3




Dick_3_Freq <- swear_words %>%
  select(Gender, Dick_3)

males <- Dick_3_Freq %>%
  filter(Gender == "Male") %>%
  arrange(Dick_3)

females <- Dick_3_Freq %>%
  filter(Gender == "Female") %>%
  arrange(Dick_3)

count(males)
count(females)

taboo <- c(1, 2, 3, 4, 5, 6, 7)
males <- c(8, 1, 2, 1, 1, 0, 0)
females <- c(6, 3, 2, 2, 0, 0, 0)

freq <- data.frame(taboo, males, females)
freq2 <- melt(freq, id.vars = "taboo")

if (max(freq$males) >  max(freq$females)) {
  max = max(freq$males)
} else {
  max = max(freq$females)
}

graph_dick3 <- ggplot(freq2, aes(x = taboo, y = value, fill = variable)) + 
  geom_bar(stat="identity", position = "dodge") + 
  scale_x_discrete(name ="Tabooness", limits = c("1","2","3", "4", "5", "6", "7")) + 
  scale_y_discrete(name = "Frequency", limits = seq(from = 0, to = as.integer(max), by = 1)) +
  ggtitle("To be honest, that guy is kind of a dick.") +
  labs(fill = "Gender") +
  theme(plot.title = element_text(hjust = 0.5))

# Stop being a cunt to the waitress and order already! / Cunt_3




Cunt_3_Freq <- swear_words %>%
  select(Gender, Cunt_3)

males <- Cunt_3_Freq %>%
  filter(Gender == "Male") %>%
  arrange(Cunt_3)

females <- Cunt_3_Freq %>%
  filter(Gender == "Female") %>%
  arrange(Cunt_3)

count(males)
count(females)

taboo <- c(1, 2, 3, 4, 5, 6, 7)
males <- c(2, 2, 2, 1, 4, 1, 1)
females <- c(1, 0, 3, 2, 3, 2, 2)

freq <- data.frame(taboo, males, females)
freq2 <- melt(freq, id.vars = "taboo")

if (max(freq$males) >  max(freq$females)) {
  max = max(freq$males)
} else {
  max = max(freq$females)
}

graph_cunt3 <- ggplot(freq2, aes(x = taboo, y = value, fill = variable)) + 
  geom_bar(stat="identity", position = "dodge") + 
  scale_x_discrete(name ="Tabooness", limits = c("1","2","3", "4", "5", "6", "7")) + 
  scale_y_discrete(name = "Frequency", limits = seq(from = 0, to = as.integer(max), by = 1)) +
  ggtitle("Stop being a cunt to the waitress and order already!") +
  labs(fill = "Gender") +
  theme(plot.title = element_text(hjust = 0.5))

# Stop looking at my tits, you pervert! / Tits_3

Tit_3_Freq <- swear_words %>%
  select(Gender, Tits_3)

males <- Tit_3_Freq %>%
  filter(Gender == "Male") %>%
  arrange(Tits_3)

females <- Tit_3_Freq %>%
  filter(Gender == "Female") %>%
  arrange(Tits_3)

count(males)
count(females)

taboo <- c(1, 2, 3, 4, 5, 6, 7)
males <- c(5, 3, 2, 1, 2, 0, 0)
females <- c(1, 2, 2, 7, 1, 0, 0)

freq <- data.frame(taboo, males, females)
freq2 <- melt(freq, id.vars = "taboo")

if (max(freq$males) >  max(freq$females)) {
  max = max(freq$males)
} else {
  max = max(freq$females)
}

graph_tit3 <- ggplot(freq2, aes(x = taboo, y = value, fill = variable)) + 
  geom_bar(stat="identity", position = "dodge") + 
  scale_x_discrete(name ="Tabooness", limits = c("1","2","3", "4", "5", "6", "7")) + 
  scale_y_discrete(name = "Frequency", limits = seq(from = 0, to = as.integer(max), by = 1)) +
  ggtitle("Stop looking at my tits, you pervert!") +
  labs(fill = "Gender") +
  theme(plot.title = element_text(hjust = 0.5))