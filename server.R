library(shiny)
shinyServer(function(input, output) {  
  
  ItemList = reactive(
    if(is.null(input$CheckListFile)){return()
    } else {d2 = read.csv(input$CheckListFile$datapath)
            return(as.character(d2[,1]))}
  )
  
  output$CustomCheckList <- renderUI({
    if(is.null(ItemList())){return ()
    } else tagList(
      checkboxGroupInput(inputId = "SelectItems", 
                         label = "Which items would you like to select?", 
                         choices = ItemList()),
      radioButtons("RadioItems", 
                   label = "Pick One",
                   choices = ItemList(), 
                   selected = 1)
    )
  })
})