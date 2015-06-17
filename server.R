CMGR<-function(new,old,n) paste(round((((new/old)^(1/n))-1)*100,digits=2),"%")

paste("A", 1, "%") 
shinyServer(
  function(input,output) {
    output$inputNew <- renderPrint({input$new})
    output$inputOld <- renderPrint({input$old})
    output$inputN <- renderPrint({input$n})
    output$prediction <- renderPrint({CMGR(input$new,input$old,input$n)})
  }
)