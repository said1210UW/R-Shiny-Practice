#Import out shiny Package
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage (
  selectInput("dataset", label = "Dataset", choices = ls("package:datasets")),
  verbatimTextOutput("summary"),
  tableOutput("table")
))
