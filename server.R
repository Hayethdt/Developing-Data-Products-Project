#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#
library(shiny)
library(ggplot2)
library(plotly)

# --- Data Preparation ---
# We create a local dataframe so we can add columns for tooltips
mtcars_df <- mtcars
mtcars_df$car_name <- rownames(mtcars)
mtcars_df$am_label <- ifelse(mtcars_df$am == 0, "Automatic", "Manual")

# Define server logic
function(input, output, session) {
  
  # 1. Value Box Calculations
  output$avg_mpg <- renderText({ 
    round(mean(mtcars_df$mpg), 1) 
  })
  
  output$avg_var_label <- renderText({ 
    paste("Avg", input$variable) 
  })
  
  output$avg_var_value <- renderText({ 
    round(mean(mtcars_df[[input$variable]]), 1) 
  })
  
  # 2. Dynamic Labels
  output$plot_title <- renderText({ 
    paste("Correlation: MPG vs", input$variable) 
  })
  
  output$summary_var_label <- renderText({ 
    paste(input$variable, "Summary Statistics") 
  })
  
  # 3. Interactive Scatter Plot with Custom Tooltips
  output$mpgPlot <- renderPlotly({
    
    # We wrap the ggplot in suppressWarnings() to hide the "unknown aesthetics" message
    p <- suppressWarnings(
      ggplot(mtcars_df, aes_string(x = input$variable, y = "mpg")) +
        geom_point(aes(text = paste0("<b>", car_name, "</b><br>",
                                     "MPG: ", mpg, "<br>",
                                     "Cylinders: ", cyl, "<br>",
                                     "Transmission: ", am_label, "<br>",
                                     input$variable, ": ", get(input$variable))),
                   color = "steelblue", size = 3, alpha = 0.8) +
        theme_minimal(base_size = 14) +
        labs(x = input$variable, y = "Miles Per Gallon (MPG)")
    )
    
    if (input$show_lm) {
      p <- p + geom_smooth(method = "lm", formula = y ~ x, 
                           color = "#e74c3c", fill = "grey", size = 1, se = FALSE)
    }
    
    ggplotly(p, tooltip = "text") %>% 
      layout(margin = list(l = 50, r = 50, b = 50, t = 80)) %>%
      config(displayModeBar = TRUE)
  })
  
  # 4. Summary Statistics Logic
  output$summary_mpg <- renderPrint({
    summary(mtcars_df$mpg)
  })
  
  output$summary_variable <- renderPrint({
    summary(mtcars_df[[input$variable]])
  })
}

