CMGR<-function(last,first,n) paste(round((((last/first)^(1/n))-1)*100,digits=2),"%")

paste("A", 1, "%") 
shinyServer(
  function(input,output) {
    output$inputLast <- renderPrint({input$last})
    output$inputFirst <- renderPrint({input$first})
    output$inputN <- renderPrint({input$n})
    output$prediction <- renderPrint({CMGR(input$last,input$first,input$n)})
  }
)