library(shiny)

ui <- fluidPage(
    titlePanel("Body Mass Index (BMI) Calculation:"),
    sidebarLayout(
        sidebarPanel(
            #add inputs here 
            numericInput("weight", label = "Enter your Weight (Kg): ", value=0,max = 200),
            numericInput("height",label = "Enter your height (m): ",value=0, max = 200),
            actionButton("button",label = "Calculate your BMI")
        
            
            ),
        
        mainPanel(
            #add output here
            textOutput("calculated_BMI"),
            textOutput("chart_BMI")
        )
    )) 