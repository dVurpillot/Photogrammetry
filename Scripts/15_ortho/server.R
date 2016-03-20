
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {
  
  ##
  formulaText <- reactive({
    paste("Nombre total de photo requis :", ( (ceiling((input$Largeur/(input$Hres*((100-input$Loverlap)/100))))*(ceiling(input$Hauteur/(input$Vres*((100-input$Foverlap)/100))))) ) )
  })
  
  ##
  output$caption <- renderText({
    formulaText()
  })
  
  ##
  formulaText2 <- reactive({
    paste("Nombre de photo sur L :", (input$Largeur/(input$Hres*((100-input$Loverlap)/100))) )
  })
  
  ##
  output$caption2 <- renderText({
    formulaText2()
  })
  
  ##
  formulaText3 <- reactive({
    paste("Nombre de photo sur H :", (input$Hauteur/(input$Vres*((100-input$Foverlap)/100))) )
  })
  
  ##
  output$caption3 <- renderText({
    formulaText3()
  })
 
  
})
  
  
  
  
  
  
  
  
  
  #dist <- input$distance
  #foc <- input$focal/1000
  #pix <- input$pixel/1000000
  #pixSize <- ((dist/foc)*pix)*1000

# Generate a plot of the requested variable against mpg and only 
# include outliers if requested
#output$distance <- renderPlot({
#x <- seq(0, 20, 1)
#pixSize <- ((x/1000)/(input$pixel/1000000))*(input$focal/1000) 
#plot(pixSize, x, xlab = 'Distance (m)', ylab = 'Taille réelle des pixels (mm)', main = 'Courbe (Taille des pixels/Distance) pour cet appareil entre 0 et 20 mm', col= "blue", pch = 19, cex = 1, lty = "solid", lwd = 2)
#text(pixSize, x, labels=round(pixSize, 2), cex= 1, pos=2)
  #abline(v=(seq(0, 2.5, 0.1)), col="grey40")
#abline(h=(seq(0, 20, 1)), col="grey10", lty="dotted") 
#})
