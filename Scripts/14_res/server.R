
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {
  
  ##
  formulaText <- reactive({
    paste("Distance horizontale (x) :", (input$Hres*input$pixel/1000),"mètres")
  })
  
  ##
  output$caption <- renderText({
    formulaText()
  })
  
  ##
  formulaText2 <- reactive({
    paste("Distance verticale (y) :", (input$Vres*input$pixel/1000),"mètres")
  })
  
  ##
  output$caption2 <- renderText({
    formulaText2()
  })
  
  ##
  formulaText3 <- reactive({
    paste("Surface :", ((input$Vres*input$pixel/1000)*(input$Hres*input$pixel/1000)),"m²")
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
