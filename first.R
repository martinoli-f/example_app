# Define UI for application
ui <- fluidPage(
  
  # Application title
  titlePanel("Hello World!"),
  
  # Sidebar panel with an input
  sidebarLayout(
    sidebarPanel(
      textInput(inputId = "text_input", label = "Input text here:")
    ),
    
    # Main panel with output
    mainPanel(
      textOutput(outputId = "text_output")
    )
  )
)

# Define server logic and R code
server <- function(input, output) {
  
  output$text_output <- renderText({
    # Display text input
    paste("You typed:", input$text_input)
  })
  
}

shinyApp(ui = ui, server = server)
