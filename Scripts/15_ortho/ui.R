library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Nombre d'orthophotographies"),
  
  # Sidebar with controls to select the variable to plot against mpg
  # and to specify whether outliers should be included
  sidebarPanel(
      numericInput('Hres', 'Distance horizontale photo (m)', 3.6, min = 1, max = 10000),  
      numericInput('Vres', 'Distance verticale photo (m)', 2.4, min = 1, max = 5000),
      numericInput('Largeur', 'Largeur L (m)', 10, min = 1, max = 10000),
      numericInput('Hauteur', 'Hauteur H (m)', 10, min = 1, max = 10000),
      numericInput('Loverlap', 'Lateral overlap X (%)', 50, min = 1, max = 100),
      numericInput('Foverlap', 'Forward overlap Y (%)', 60, min = 1, max = 100)  
    ),
    
  # Show the caption and plot of the requested variable against mpg
  mainPanel(
    h3(verbatimTextOutput("caption")),    
    h3(verbatimTextOutput("caption2")),    
    h3(verbatimTextOutput("caption3"))
    
  )
))