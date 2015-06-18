#########Compound Monthly Growth Rate Function#############
shinyUI(pageWithSidebar(
  #Application title
  headerPanel("Compound Monthly Growth Rate (CMGR)"),
  sidebarPanel(
    numericInput('first','First',100),
    numericInput('last','Last',200),
    numericInput('n','Number of Occurances',4),
    submitButton('Submit')
  ),
  mainPanel(
      wellPanel(p("This is meant to calculate the Compound Monthly Growth Rate.  To the left, insert the first value of your data, then the last value of your data, and finally insert the number of total values that exist in the data. For example, I want to calculate the CMGR of invoiced revenue for an account over 4 months.  The first invoice for this account is $100 in month 1, the last invoice for this account is $200 in month 4.  There are 4 total months, so the CMGR is 18.92%.")),
    h2("CMGR Formula: ((Last/First)^(1/N))-1"),
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
