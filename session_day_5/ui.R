library(shiny)
library(DT)

ui <- fluidPage(
    
    # Application title
    titlePanel("My_test_data"),
    
    fluidRow(
        column(2, 
               wellPanel(
                   div(checkboxGroupInput("lic", "License Names: ",
                                      c("Public domain" = "PD",
                                        "Creative Commons Attribution-Share Alike 4.0" = "CCA4",
                                        "Creative Commons Attribution-Share Alike 3.0" = "CCA3",
                                        "Creative Commons Attribution 2.0" = "CC2",
                                        "Creative Commons Attribution 2.5"= "CC2.5",
                                        "Creative Commons Attribution-Share Alike 2.0 kr"= "CCA2",
                                        "Creative Commons Attribution-Share Alike 2.0 de"="CCA2_2",
                                        "Creative Commons Attribution-Share Alike 2.5"= "CCA2.5")),
                                        
                                        style = "font-size: 75%; width: 100%"),
                   
                   
               )
        ),
        column(10, 
               wellPanel(
                   div(DT::dataTableOutput("table_mycsv"),style = "font-size: 75%; width: 100%",
                   downloadLink(outputId = "download_mydata", label= "Download CSV")
               ))
        )
    )
)