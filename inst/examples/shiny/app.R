library(shiny)
library(morrisjs)

base_date <- as.Date("2011-01-01")

ui <- fluidPage(
  titlePanel("morrijs example"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput(
        "bars",
        "Number of bars:",
        min = 1,
        max = 50,
        value = 30)
    ),
    mainPanel(
      morrisjsOutput("mjs")
    )
  )
)

server <- function(input, output) {
  
  output$mjs <- renderMorrisjs({
    df <- data.frame(date = seq.Date(base_date, base_date + input$bars - 1, by = 1), series1 = runif(input$bars))
    
    morrisjs(df) %>% 
      mjsBar
  })
}

shinyApp(ui = ui, server = server)

