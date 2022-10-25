#install.packages("mongolite", dep=T)
#install.packages("markdown", dep=T)

library(shiny)
library(dplyr)
library(magick)
#library (mongolite)
#mng_con<-mongo(collection = 'vidPrac',db='video_practice')


# Define UI for application that draws a histogram
ui <- fluidPage(
  
  
    # Application title
    titlePanel(title=div(img(src = 'mini.png'),"Chess Mining" , align="center", img(src = 'mini.png'))
      ),
   
     navbarPage(tabPanel("Mining"),
                tabPanel("Write Blockchain"),
                tabPanel("White Paper"),
                tabPanel("NFT"),
    ),
    
    # Sidebar with a slider input for number of bins 
    sidebarLayout(position = "right",
        sidebarPanel(
          textOutput("greeting"),
          h2(" Initial survey: ", align="center"),
          textInput("nam", "Name:", "Haim"),
          textInput("sur", "Surname:", "Kichik"),
          dateInput("date", "Date:",
                    startview = "decade", value = "2012-12-21", format = "dd / M / yyyy"),
          actionButton("calculate", "Calculate age"),
          br(),
          hr(),
          helpText("*All your information is private and encripted."),
          
        ),

        # Show a plot of the generated distribution
        mainPanel(
             h1("La humanidad sueña libertad, 
             y siente valiente la voz,
             y el pueblo ruge el miedo,
             y el olor a muerte se aleja
             de nuestro Sol", align="center"),
             h2("del suelo he recogido los diamantes,
                los soles hechos vida susurran
                nombres de todos los hombres", align="center"),
             br(),
             hr(),
             img(src = 'un_oro.png', align="center", height = '200px', width = '200px'),
             img(src = 'un_oro.png', align="center", height = '150px', width = '150px'),
             img(src = 'un_oro.png', align="center", height = '100px', width = '100px'),
             img(src = 'un_oro.png', align="center", height = '50px', width = '50px'),
             img(src = 'un_oro.png', align="center", height = '25px', width = '25px'),
             img(src = 'un_oro.png', align="center", height = '12.6px', width = '12.6px'),
             img(src = 'un_oro.png', align="center", height = '200px', width = '200px'),
             img(src = 'un_oro.png', align="center", height = '150px', width = '150px'),
             img(src = 'un_oro.png', align="center", height = '100px', width = '100px'),
             img(src = 'un_oro.png', align="center", height = '50px', width = '50px'),
             img(src = 'un_oro.png', align="center", height = '25px', width = '25px'),
             img(src = 'un_oro.png', align="center", height = '12.6px', width = '12.6px'),
             hr(),
             br(),
              )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output, session) {
  
  id<-432
  n<-1:id
  fi<-(1+sqrt(5))/2
  gf<-(fi*n)%%1
  ddf<-tibble(n,gf)
  path = "www/un_oro.png"

  output$greeting <- renderText({
    paste("Bienevido al futuro donde las máquinas siguen tus órdenes,",input$nam, " ", input$sur,".")
  })
  
}

# Run the application 
shinyApp(ui = ui, server = server)

#devtools::install_github("r-dbi/DBI")

#countries_df <- read.csv("https://raw.githubusercontent.com/lukes/ISO-3166-Countries-with-Regional-Codes/master/all/all.csv", strip.white = TRUE)
