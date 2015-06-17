#########Compound Monthly Growth Rate Function#############
shinyUI(pageWithSidebar(
  #Application title
  headerPanel("Compound Monthly Growth Rate (CMGR)"),
  sidebarPanel(
    numericInput('old','Old',0),
    numericInput('new','New',0),
    numericInput('n','Number of Occurances',0),
    submitButton('Submit')
  ),
  mainPanel(
    h2("CMGR Formula: ((New/Old)^(1/N))-1"),
##    h4('Old Value'),
##    verbatimTextOutput("inputOld"),
##    h4('New Value'),
##    verbatimTextOutput("inputNew"),
##    h4('Number of Occurances'),
##    verbatimTextOutput("inputN"),
    h4('CMGR'),
    verbatimTextOutput("prediction")
  )
))
