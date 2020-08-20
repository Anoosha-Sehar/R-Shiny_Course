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
    tags$img(src="https://www.edureka.co/blog/wp-content/uploads/2019/09/R-Shiny-Tutorial.jpg",width="300", height="100",style="border:5px dotted teal",style="float:right"),
    
    titlePanel(h5("Old Faithful Geyser Data")),
    tags$div(class="header", checked=NA,
             list(
                 tags$p("Below is a Old Faithful Geyser data", tags$strong("On left side of the panel, You can see a Histogram")),
                 ""
             )
    ),
    
    tags$img(src="https://www.analyticsvidhya.com/wp-content/uploads/2016/10/shiny.png",width="50", height="50",style="border:5px solid black"),
    tags$img(src="R_Shiny.png", width="50", height="50",style="border:5px dotted blue"),
    tags$img(src="https://miro.medium.com/max/1400/1*cuOlMPTUQ3cTY7ldb-usKw.png",width="50", height="50",style="border:5px solid red"),
    #tags$a(href="github.com/Anoosha-Sehar/R-Shiny_Course", "Please Click Here for GitHub"),
    tags$div(class="header", checked=NA,
             list(
                 tags$br(),
                 tags$a(href="github.com/Anoosha-Sehar/R-Shiny_Course", tags$i("Click Here for GitHub!")),
                 ""
             )
    ),
    tags$br(),
    # Sidebar with a slider input for number of bins
    tabsetPanel(
        tabPanel("Input/Output Plot", verbatimTextOutput("Plot")), 
        tabPanel("Summary"), 
        tabPanel("Table", tableOutput("table"))
    
        ),
    
    
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
            
            navbarPage("Navbar!",
                       tabPanel("Plot",plotOutput("distPlot"),
                       ),
                        tabPanel("Plot2",plotOutput("distPlot2"),
                        )
                        ),
                                
                                   
            
            tags$i("Input/Output Data:"),
            tags$ul(
                tags$li("Bins based on input"),
                tags$li("Histogram with the specified number of bins"),
            ),
            
            
            
            
          
            
                        )
    ),
    tags$footer("My footer", align = "center")
    
))

