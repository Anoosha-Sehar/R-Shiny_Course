library(shiny)
library(plotly)
library(gapminder)


shinyServer(function(input, output) {
    # Insert plotly server code here #
    x <- list(categoryorder= "array",
              categoryarray= sort(rownames(mtcars),T),
              tickangle=45,
              title="Name")
    
    
    y <- list(title="weight")
    output$barchart <- renderPlotly({
        plot_ly(
            y=mtcars$wt,
            x=rownames(mtcars),
            type="bar",
            
            text=mtcars$cyl,
            hoverinfo="text",
        #     hovertemplate=paste0("<b>Name</b>: %{x} <br>",
        #                          "<i>Weight</i>: %{y:2f} (100 1bs)",
        #                          mtcars$mpg, "Mies per galoon<br>",
        #                          "<extra></extra>")
        #     
        #     
        ) %>% layout ("title"=cars, xaxis=x,yaxis=y)
        
    })
    
    output$linechart <- renderPlotly({
        data<-gapminder[gapminder$continent =="Oceania",]
        plot_ly(
            data=data,
            type="scatter",
            mode="lines+markers",
            
            y =~ pop,
            x =~ year,
            hoverinfo="pop",
            color=~country
        )
        
    })
})

