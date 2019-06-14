
library("deSolve")
library("shiny")
infectious <- function(t, y, p){
  {S<- y[1] 
  I<- y[2] 
  R<- y[3] }
  
  with(as.list(p), {
    dS.dt<--B*I*S 
    dI.dt<-B*I*S-g*I 
    dR.dt<-g*I
    return(list(c(dS.dt, dI.dt, dR.dt)))}) 
  
}

#User Interface
ui <- fluidPage(
  mainPanel(
    HTML(
      paste(
        
        h2("Infectious Disease Model\n\n", align="center"),'<br/>',
        h4("Simple SIR model"),
        img(src="SIR_Formula.png",height =100, width=120),'<br/>',
        h4("Variables that can be modified:"),
        h6("1. Total Population → Total number of individuals that are in your population"),
        h6("2. Infectives (I) → The number of individuals at time (t) who are infected and can transmit the disease."),
        h6("3. Transmission coecient (β) → describes the instantaneous rate at which the number of infected hosts increases per infected individual."),
        h6("4. Resitance Rate per Infected Individual (γ) → Individuals become resistant to this disease at the constant per rate, γ."),
        h6("5. Time → in Months"),'<br/>'
        
        
        ))),
  sidebarLayout(position = "right",
  sidebarPanel(
  numericInput(inputId = "totalpop",
               label = "Total Population",
               min = 0,
               max = 10000000000000000000000000000000000000000000000,
               value = 10000),
  numericInput(inputId = "infectedpop",
               label = "Infectives(I)",
               min = 0,
               max = 100000,
               value = 10),
  numericInput(inputId = "beta",
               label = "Transmission coecient (β)",
               min = 0,
               max = 10000000,
               value = 0.01),
  numericInput(inputId = "gamma",
               label = "Resitance Rate per Infected Individual (γ)",
               min = 0,
               max = 10000000,
               value = 4),
  numericInput(inputId = "timeframe",
               label ="Time (Numer of Months)",
               min = 1,
               max = 1000000000000000,
               value = 3)),
  
  mainPanel(plotOutput("matPlot"))),
  mainPanel(
    HTML(
      paste(h6("*This app was created by Irving Angeles (iangeles27@ucla.edu) and Kyro Grace(kgrace23@ucla.edu)"))
    ))
)

#Server
server <- function(input, output){
  datainput <- reactive({
    I <- R <- input$infectedpop
    S <- ((input$totalpop) - I - R)
    parms<- c(B =input$beta, g =input$gamma)
    months <- seq(0, input$timeframe, by = 0.01)
    out <- data.frame(ode(c(S, I, R), months, infectious, parms))
    list(months = months, out = out)
    })
  output$matPlot <- renderPlot({
    matplot(datainput()$months,datainput()$out[, -1], type = "l", xlab = "Time (months)", 
            ylab = "Susceptible, Infected & Recovered Population", main = "SIR Model",lty = 1:3, col = 2:4 )
    legend("right", c("Susceptible", "Infected", "Recovered"), lty = 1:3, col = 2:4 , bty = "n")
           })
}
shinyApp(ui = ui, server = server)
