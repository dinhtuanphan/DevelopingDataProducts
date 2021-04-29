#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
data('mtcars')

library(shiny)
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Car Analysis"),
    
    sidebarPanel(
        
        selectInput("variable", "Variable:", 
                    c("Miles per gallon" = "mpg",
                      "Distance" = "disp",
                      "Cylinder" = "cyl"))
    ),
    
    mainPanel(
        h3(textOutput("caption")),

        plotOutput("carPlot")
    )
))