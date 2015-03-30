library(shiny)
shinyUI(fluidPage(
  titlePanel("Create a checkboxGroupInput and a RadioButtons widget from a CSV"),
  sidebarLayout(
    sidebarPanel(fileInput(inputId = "CheckListFile", label = "Upload list of options")),
    mainPanel(uiOutput("CustomCheckList")
    )
  )
))
