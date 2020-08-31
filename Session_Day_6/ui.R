library(shiny)
library(plotly)


ui <- fluidPage(
    # Insert UI Components here #
    plotlyOutput("barchart"),
    plotlyOutput("linechart")
)