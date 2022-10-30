#install.packages("mongolite", dep=T)
#install.packages("markdown", dep=T)
#install.packages("bslib", dep=T)

library(shiny)
library(dplyr)
library(bslib)

#mng_con<-mongo(collection = 'vidPrac',db='video_practice')


# Define UI for application that draws a histogram
ui <- fluidPage(
  
  
    # Application title
    titlePanel("Chess Mining",
               title=div(img(src = 'mini.png'),"Chess Mining" , align="center", img(src = 'mini.png'))
      ),
   
     navbarPage("⛥",
                tabPanel("Minería ♞"),
                tabPanel("Write Blockchain ♝"),
                tabPanel("White Paper ♜"),
                tabPanel("NFT ♛")
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
        mainPanel(br(),
             h2("♚ Crea un Blockchain entre tod@s", align="center"),
             hr(),
             h2("♛ Almacena información inmutable", align="center"),
             hr(),
             h2("♜ Crea dinero con nuestros datos", align="center"),
             hr(),
             h2("♝ Inteligencia Artificial para la Humanidad", align="center"),
             hr(),
             h2("♞ Irracionales= φ, e y π, velocidad de la luz", align="center"),
             hr(),
             h2("♟ Unidad tecnológica y social",  align="center"),
            hr(),
            br()
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
