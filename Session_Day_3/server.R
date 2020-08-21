#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

server <- function(input, output) {
    
    #Fill in the blanks 
    toPlot <- reactive({
        if (input$checkbox) {
            return(rnorm(
                #slider input and calculation
                input$slider*10
            ))
        } else{
            return(rnorm(
                input$slider
                #just slider input
            ))
        }
    })
    
    #render plot with reactive here
    output$plot <- renderPlot({
        plot(toPlot())
    })
    
}
