library(DT)
library(readr)
library(dplyr)

server <- function(input, output) {
    setwd("/cloud/project/session_day_5")
    
   # Set up your reactives to modify your data from reactive inputs here
  #license -> reactive({
   
    
#  })
  
   output$table_mycsv <- DT::renderDataTable({

     datatable(my_data,
                  options = list(scrollX = TRUE, pageLength = 15),
                  class = "display compact  ",
                  filter = "top",


                  #editable rows except columns 2,3,5,6 and 7
                  editable = list(target = "row", disable = list(columns = c(2, 3, 5,6,7,8,9)))
               )
    })
   
   
   observeEvent(input$lic, {
     output$table_mycsv <- DT::renderDataTable(DT::datatable(my_data, options = list(scrollX = TRUE, pageLength = 15),
                                                             class = "display compact  ",
                                                             filter = "top",
                                                             
                                                             
                                                             #editable rows except columns 2,3,5,6 and 7
                                                             editable = list(target = "row", disable = list(columns = c(2, 3, 5,6,7,8,9)))))
   })
   
   observeEvent(input$lic, {
   output$table_mycsv <- renderDT(
   {
   isolate({
      if(length(input$lic) == 0) 
         return(my_data)
      incheckbox <- input$lic
   })
   key <- data.frame(cat = c("PD", "CCA4", "CCA3", "CC2", "CC2.5", "CCA2","CCA2_2","CCA2.5" ),
                             val =  c("Public domain"
                                     , "Creative Commons Attribution-Share Alike 4.0"
                                     ,"Creative Commons Attribution-Share Alike 3.0"
                                     ,"Creative Commons Attribution 2.0"
                                     ,"Creative Commons Attribution 2.5"
                                     ,"Creative Commons Attribution-Share Alike 2.0 kr"
                                     ,"Creative Commons Attribution-Share Alike 2.0 de"
                                     ,"Creative Commons Attribution-Share Alike 2.5"))
      
      
      if(any(key$cat %in% incheckbox)){
         index <- (which(key$cat %in% incheckbox))
#         if length(index){print("heloo")}
         switch(as.character(length(index)),
                
                '1' = { 
                   my_data<- filter(my_data, license==key$val[index[1]] )
                   return(my_data) 
                },
               
                  '2' = { 
                   my_data<- filter(my_data, license==key$val[index[1]] | license==key$val[index[2]] )
                   return(my_data) 
                },
                
                 '3' = { 
                   my_data<- filter(my_data, license==key$val[index[1]] | license==key$val[index[2]] | license==key$val[index[3]] )
                   return(my_data)  
                },
                
                '4' = { 
                   my_data<- filter(my_data, license==key$val[index[1]] | 
                                       license==key$val[index[2]] | 
                                       license==key$val[index[3]] | 
                                       license==key$val[index[4]])
                      
                   return(my_data)  
                },
                
                '5' = { 
                   my_data<- filter(my_data, license==key$val[index[1]] | 
                                       license==key$val[index[2]] | 
                                       license==key$val[index[3]] | 
                                       license==key$val[index[4]]|
                                       license==key$val[index[5]])
                   return(my_data)  
                },
                
                '6' = { 
                   my_data<- filter(my_data, license==key$val[index[1]] | 
                                       license==key$val[index[2]] | 
                                       license==key$val[index[3]] | 
                                       license==key$val[index[4]]|
                                       license==key$val[index[5]]|
                                       license==key$val[index[6]])
                   return(my_data)  
                },
                
                '7' = { 
                   my_data<- filter(my_data, license==key$val[index[1]] | 
                                       license==key$val[index[2]] | 
                                       license==key$val[index[3]] | 
                                       license==key$val[index[4]]|
                                       license==key$val[index[5]]|
                                       license==key$val[index[6]]|
                                       license==key$val[index[7]])
                   return(my_data)  
                },
                
                '8' = { 
                   my_data<- filter(my_data, license==key$val[index[1]] | 
                                       license==key$val[index[2]] | 
                                       license==key$val[index[3]] | 
                                       license==key$val[index[4]]|
                                       license==key$val[index[5]]|
                                       license==key$val[index[6]]|
                                       license==key$val[index[7]]|
                                       license==key$val[index[8]])
                   return(my_data)  
                }
                
                
         )
      } 
   }
      
   )}
   )

   output$download_mydata <- downloadHandler(
        filename= function(){
            return("testdata.csv")
        },
        content=function(file){
            write.csv(my_data, file)
        }
    )
   
   
}


