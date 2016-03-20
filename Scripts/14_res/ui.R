library(shiny)

##
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Couverture"),
  
  # Sidebar with controls
  ##
  sidebarPanel(
      numericInput('Hres', 'Résolution horizontale', 5472, min = 1, max = 10000),
      numericInput('Vres', 'Résolution verticale', 3648, min = 1, max = 5000),          
      numericInput('pixel', 'Taille réelle des pixels (mm)', 10, min = 1, max = 500)  
    ),
    
  ##
  mainPanel(
    h3(verbatimTextOutput("caption")),    
    h3(verbatimTextOutput("caption2")),    
    h3(verbatimTextOutput("caption3"))
    
  )
))