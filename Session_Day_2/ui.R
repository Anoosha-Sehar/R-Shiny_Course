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
    tags$div(class="header", checked=NA,
             list(
                 tags$p("Below is a Old Faithful Geyser data"),
                 tags$strong("On left side of the panel, You can see a Histogram"),"!"
             )
    ),
    
    
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
            tags$i("Input/Output Data:"),
            tags$ul(
                tags$li("Bins based on input"),
                tags$li("Histogram with the specified number of bins"),
            ),
            
            
            tags$div(class="header", checked=NA,
                     list(
                         tags$p("If you want to visit my R-shiny App at my GitHub account:"),
                         tags$a(href="github.com/Anoosha-Sehar/R-Shiny_Course", tags$i("Click Here for GitHub!")),
                         tags$br(),
                         tags$br(),
                         tags$strong("Thank you"),"!"
                     )
            ),
            
            tags$br(),
            tags$br(),
            tags$img(src="https://www.analyticsvidhya.com/wp-content/uploads/2016/10/shiny.png",width="100", height="100",style="border:5px solid black"),
            tags$img(src="R_Shiny.png", width="100", height="100",style="border:5px dotted blue"),
            tags$img(src="https://miro.medium.com/max/1400/1*cuOlMPTUQ3cTY7ldb-usKw.png",width="100", height="100",style="border:5px solid red")
            #tags$a(href="github.com/Anoosha-Sehar/R-Shiny_Course", "Please Click Here for GitHub"),
                        )
    )
))
