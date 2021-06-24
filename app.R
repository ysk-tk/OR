library(shiny)
runApp(list(
ui = fluidPage(
  sidebarLayout(
    sidebarPanel(
      textInput("N", "小さい数字を入力", value = "1"),
      textInput("M", "大きい数字を入力", value = "10"),
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