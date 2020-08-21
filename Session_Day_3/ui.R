#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

ui <- fluidPage(
    titlePanel("Reactive values"),
    sidebarLayout(
        sidebarPanel(
            #add inputs here 
            sliderInput("slider", "choose a number", min=1, max=20, value=10),
            checkboxInput("checkbox", "Multiply by 10?"),
        ),
        mainPanel(
            #add output here
            plotOutput("plot")
        )
    )) 