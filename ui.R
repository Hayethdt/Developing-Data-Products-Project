#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/       
#
## shiny_pitch_course_project

library(shiny)
library(bslib)
library(bsicons)
library(plotly) # Required for interactivity

# Define UI for application that creates Modern Dashboard
# Modern Dashboard Layout with Plotly Integration
ui <- page_sidebar(
  title = "MTCars Analytics Dashboard",
  theme = bs_theme(version = 5, bootswatch = "flatly"),
  
  # Sidebar with Documentation Accordion
  sidebar = sidebar(
    title = "Regression Controls",
    
    # --- START DOCUMENTATION SECTION ---
    accordion(
      open = FALSE, # Collapsed by default for a clean look
      accordion_panel(
        "User Guide",
        icon = bs_icon("info-circle-fill"),
        markdown("
                **Purpose:** Explore how vehicle specs (HP, Weight, etc.) impact fuel efficiency (MPG).
                
                **How to Use the App:**
                1. **Select Variable:** Use the dropdown to choose an X-axis metric.
                2. **Toggle Trend:** Use the checkbox to add/remove a Linear Regression Line.
                3. **Hover:** Move your mouse over data points in the chart for specific car details.
                4. **Analyze:** Watch the Value Boxes above the chart and the Summary Tables below the chart update instantly.
                
                **Features:**
                * **Points:** Steel Blue Circles representing individual cars.
                * **Regression:** Solid **Red Line** showing correlation.
                * **Interaction:** Hover over points for full car specs.
                 
                *Data source: Motor Trend US magazine (2026 Analysis).*
                
                 Prepared by Hayelom Tesfay Feb 28, 2026
                ")
      )
    ),
    # --- END DOCUMENTATION SECTION ---
    
    hr(),
    
    selectInput("variable", "Select X-Axis Variable:",
                choices = c("Horsepower" = "hp", 
                            "Weight" = "wt", 
                            "Displacement" = "disp", 
                            "Cylinders" = "cyl")),
    
    checkboxInput("show_lm", "Display Regression Line", value = TRUE)
  ),
  
  # Key Metrics Section
  layout_column_wrap(
    width = 1/2,
    value_box(
      title = "Average MPG",
      value = textOutput("avg_mpg"),
      showcase = bs_icon("fuel-pump-fill"),
      theme = "primary"
    ),
    value_box(
      title = textOutput("avg_var_label"),
      value = textOutput("avg_var_value"),
      showcase = bs_icon("speedometer2"),
      theme = "info"
    )
  ),
  
  # Main Plot Card - Updated to Plotly
  card(
    card_header(textOutput("plot_title")),
    plotlyOutput("mpgPlot"), # Changed from plotOutput to plotlyOutput
    full_screen = TRUE
  ),
  
  # Summary Statistics
  layout_column_wrap(
    width = 1/2,
    card(
      card_header("MPG Summary Statistics"),
      verbatimTextOutput("summary_mpg")
    ),
    card(
      card_header(textOutput("summary_var_label")),
      verbatimTextOutput("summary_variable")
    )
  )
)

