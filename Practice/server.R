#Import our Shiny Package
library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  #Explaning to UI how to display that summary info we told em to show
  output$summary <- renderPrint({
    dataset <- get(input$dataset, "package:datasets")
    
    #Dataset is just a table, so well use Shiny summary to summarize it
    summary(dataset)
  })
  
  #Explaining to UI how to plot Table we ask it to do
  output$table <- renderTable({
    dataset <- get(input$dataset, "package:datasets")
    (dataset)
  })
})
