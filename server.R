library(shiny)
BMI <- function(weight,height) weight/(height^2)
y<<-0
shinyServer(
  function(input, output) {
    y <<- y + 1
    #output$w <- renderPrint({input$weight})
    #output$h <- renderPrint({input$height})
    output$bmi <- renderPrint({BMI(input$weight,input$height)})
    output$text <- renderText(y)
  }
)