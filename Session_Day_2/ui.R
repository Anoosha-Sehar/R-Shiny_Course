#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot"),
            tags$strong("bold"),
            tags$i("italics"),
            tags$ul(
                tags$li("item1"),
                tags$li("item2"),
            ),
            # tags$img(src="https://shiny.rstudio.com/images/examples/01_hello.png")
            tags$img(src="https://www.analyticsvidhya.com/wp-content/uploads/2016/10/shiny.png")
            
        )
    )
))
