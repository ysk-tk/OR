library(shiny)
runApp(list(
ui = fluidPage(
  sidebarLayout(
    sidebarPanel(
      textInput("N", "¬‚³‚¢”š‚ğ“ü—Í", ""),
      textInput("M", "‘å‚«‚¢”š‚ğ“ü—Í", ""),
    ),
    mainPanel(
      br(),
      br(),
      br(),
      textOutput("text")
    )
  )
),

server = function(input, output) {
    output$text <- renderText({ 
N <- as.integer(input$N)
M <- as.integer(input$M)
m <- M-1
text = vector()
for (i in N:m){
T <- paste (i, "OR", sep = " ")
text <- paste (text, T, sep = " ")
}
text <- paste (text, M, sep = " ")
text <- paste (text, ":", sep = "")})
}
))