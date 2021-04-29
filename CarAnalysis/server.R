#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

data('mtcars')

library(shiny)
library(plotly)
shinyServer(function(input, output) {
    
    formulaText <- reactive({
        paste("hp vs ", input$variable)
    })
    
    output$caption <- renderText({
        formulaText()
    })
    output$carPlot <- renderPlot({
       ggplot(mtcars,aes_string(x='hp',y=input$variable, col='hp')) + geom_point()
    })
    
})
