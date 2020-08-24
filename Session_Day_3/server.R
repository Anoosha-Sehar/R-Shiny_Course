server <- function(input, output) {
    
#Reactive function to calculate Body Mass Index
    values <- reactive({
        if (input$button)
        {
            return(input$weight/(input$height * input$height))
        }
        
        else
        {
            "Please enter your weight in kilograms (kg) and height in meters 
            (m). Then press the button to calculate your BMI"
        }
        
       
        
         
    })
 
  
    

#Another reactive function which is using output of first reactive function to 
#calculate body mass index scale.   
    
    chart<-reactive({
        if(input$button == 0) {
            "Underweight/Normal/Overweight/Obesity"
        }
        else {
            if (values()<18.5) {
            "underweight"
        } 
            else if (values()<=24.9) {
            "Normal"
        } 
            else if (values()<=29.9) {
            "Overweight"
        } 
            else {
            "Obesity"
        }
        }
       
    })

#Output of First Reactive Function    
    
    output$calculated_BMI <- renderText({
        
        paste("Your BMI is:  ", values())
    })


#Output of Second Reactive Function    
   
     output$chart_BMI<- renderText({
        paste("BMI Scale:  ",chart())
    })
    
    
    
    
}
