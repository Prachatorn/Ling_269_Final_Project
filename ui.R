library(shiny)
library(shinythemes)
library(plotly)
source("average_calc.R")

shinyUI(
  navbarPage(
    "Taboo Ratings For Each Sentences",
    theme = shinytheme("united"),
    tabPanel(
      "Ass",
      mainPanel(plotOutput("ass1")),
      sidebarPanel(paste("Average Male Rating:", Ass_1_male)),
      sidebarPanel(paste("Average Female Rating:", Ass_1_female)),
      sidebarPanel(paste("Average Total Rating:", Ass_1_taboo)),
      mainPanel(plotOutput("ass2")),
      sidebarPanel(paste("Average Male Rating:", Ass_2_male)),
      sidebarPanel(paste("Average Female Rating:", Ass_2_female)),
      sidebarPanel(paste("Average Total Rating:", Ass_2_taboo)),
      mainPanel(plotOutput("ass3")),
      sidebarPanel(paste("Average Male Rating:", Ass_3_male)),
      sidebarPanel(paste("Average Female Rating:", Ass_3_female)),
      sidebarPanel(paste("Average Total Rating:", Ass_3_taboo))
    ),
    tabPanel(
      "Cunt",
      mainPanel(plotOutput("cunt1")),
      sidebarPanel(paste("Average Male Rating:", Cunt_1_male)),
      sidebarPanel(paste("Average Female Rating:", Cunt_1_female)),
      sidebarPanel(paste("Average Total Rating:", Cunt_1_taboo)),
      mainPanel(plotOutput("cunt2")),
      sidebarPanel(paste("Average Male Rating:", Cunt_2_male)),
      sidebarPanel(paste("Average Female Rating:", Cunt_2_female)),
      sidebarPanel(paste("Average Total Rating:", Cunt_2_taboo)),
      mainPanel(plotOutput("cunt3")),
      sidebarPanel(paste("Average Male Rating:", Cunt_3_male)),
      sidebarPanel(paste("Average Female Rating:", Cunt_3_female)),
      sidebarPanel(paste("Average Total Rating:", Cunt_3_taboo))
    ),
    tabPanel(
      "Dick",
      mainPanel(plotOutput("dick1")),
      sidebarPanel(paste("Average Male Rating:", Dick_1_male)),
      sidebarPanel(paste("Average Female Rating:", Dick_1_female)),
      sidebarPanel(paste("Average Total Rating:", Dick_1_taboo)),
      mainPanel(plotOutput("dick2")),
      sidebarPanel(paste("Average Male Rating:", Dick_2_male)),
      sidebarPanel(paste("Average Female Rating:", Dick_2_female)),
      sidebarPanel(paste("Average Total Rating:", Dick_2_taboo)),
      mainPanel(plotOutput("dick3")),
      sidebarPanel(paste("Average Male Rating:", Dick_3_male)),
      sidebarPanel(paste("Average Female Rating:", Dick_3_female)),
      sidebarPanel(paste("Average Total Rating:", Dick_3_taboo))
    ),
    tabPanel(
      "Fuck",
      mainPanel(plotOutput("fuck1")),
      sidebarPanel(paste("Average Male Rating:", Fuck_1_male)),
      sidebarPanel(paste("Average Female Rating:", Fuck_1_female)),
      sidebarPanel(paste("Average Total Rating:", Fuck_1_taboo)),
      mainPanel(plotOutput("fuck2")),
      sidebarPanel(paste("Average Male Rating:", Fuck_2_male)),
      sidebarPanel(paste("Average Female Rating:", Fuck_2_female)),
      sidebarPanel(paste("Average Total Rating:", Fuck_2_taboo)),
      mainPanel(plotOutput("fuck3")),
      sidebarPanel(paste("Average Male Rating:", Fuck_3_male)),
      sidebarPanel(paste("Average Female Rating:", Fuck_3_female)),
      sidebarPanel(paste("Average Total Rating:", Fuck_3_taboo))
    ),
    tabPanel(
      "Tits",
      mainPanel(plotOutput("tits1")),
      sidebarPanel(paste("Average Male Rating:", Tit_1_male)),
      sidebarPanel(paste("Average Female Rating:", Tit_1_female)),
      sidebarPanel(paste("Average Total Rating:", Tit_1_taboo)),
      mainPanel(plotOutput("tits2")),
      sidebarPanel(paste("Average Male Rating:", Tits_2_male)),
      sidebarPanel(paste("Average Female Rating:", Tits_2_female)),
      sidebarPanel(paste("Average Total Rating:", Tits_2_taboo)),
      mainPanel(plotOutput("tits3")),
      sidebarPanel(paste("Average Male Rating:", Tits_3_male)),
      sidebarPanel(paste("Average Female Rating:", Tits_3_female)),
      sidebarPanel(paste("Average Total Rating:", Tits_3_taboo))
    )
  )
)
