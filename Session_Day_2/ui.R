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
    
    #  Added an image in new row 
    fluidRow(
        tags$img(src="https://www.edureka.co/blog/wp-content/uploads/2019/09/R-Shiny-Tutorial.jpg",width="100", height="90",style="border:5px dotted teal",style="float:right"),
        tags$img(src="https://www.analyticsvidhya.com/wp-content/uploads/2016/10/shiny.png",width="100", height="90",style="border:5px solid black"),
        tags$img(src="R_Shiny.png", width="100", height="90",style="border:5px dotted blue"),
        tags$img(src="https://miro.medium.com/max/1400/1*cuOlMPTUQ3cTY7ldb-usKw.png",width="100", height="90",style="border:5px solid red"),
        #tags$a(href="github.com/Anoosha-Sehar/R-Shiny_Course", "Please Click Here for GitHub"),
        tags$br(),
    ),
    
    
    # Application title
    titlePanel(h5("Old Faithful Geyser Data")),
    tags$div(class="header", checked=NA,
             list(
                 tags$p("Below is a Old Faithful Geyser data", tags$strong("On right side of the panel, You can see a Histogram")),
                 ""
             )
    ),
    
    #Added few tabs in App
    tabsetPanel(
        tabPanel("Input Data", verbatimTextOutput("Plot")), 
        tabPanel("Summary"), 
        tabPanel("Table", tableOutput("table"))
    
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
            
            tags$i("Input/Output Data:"),
            tags$ul(
                tags$li("Input: Bins based on input"),
                tags$li("Output: Histogram with the specified number of bins"),
            ),
         
        # Navigation Bar to add both plots.   
            
         navbarPage("Histogram Plots",fluid=TRUE,
                       tabPanel("Plot1",
                                plotOutput("distPlot"),
                               ),
                        tabPanel("Plot2",plotOutput("distPlot2"),
                        )
                        ),
                        
            )
    ),
    
    fluidRow(
        column(4,align = "center",
               tags$p("Anoosha Sehar")),
        
        column(4,align = "center",
               tags$a(href="mailto:anoosha_sehar@ymail.com","Email me")),
        
        column(4,align = "center",
               tags$a(href="https://www.linkedin.com/in/anoosha-sehar-53770a1b1/"," LinkedIn : Anoosha")),
        
    )
))

