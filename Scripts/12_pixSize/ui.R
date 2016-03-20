library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Taille réelle des pixels en fonction de la distance"),
  
  # Sidebar with controls to select the variable to plot against mpg
  # and to specify whether outliers should be included
  sidebarPanel(      
      numericInput('distance', 'Distance (m)', 10, min = 1, max = 250),    
      numericInput('focal', 'Focale objectif (mm)', 50, min = 1, max = 100),      
      numericInput('pixel', 'Taille des pixels (microns)', 6.58, min = 1, max = 10)  
    ),
    
  # Show the caption and plot of the requested variable against mpg
  mainPanel(
    h3(textOutput("caption")),
    
    plotOutput("pixSizePlot")
  )
))