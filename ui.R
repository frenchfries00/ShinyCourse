shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Compute your Body Mass Index"),
    sidebarPanel(
      numericInput('weight', 'You weight, kg', 70, min = 20, max = 300, step = 1),
      numericInput('height', 'You height, m', 1.60, min = 1, max = 2.5, step = 0.01),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Your body mass index (BMI) is'),
      verbatimTextOutput("bmi"),
      h4("For adults 20 years old and older, BMI is interpreted using standard weight status 
          categories. These categories are the same for men and women of all body types and ages.
          Usually, the BMI from 18.5 to 24.9 as considered as corresponding to normal weight. However,
          the bounds may differ for people doing regular exercises."),
      
      h4('How many times was this page refreshed?'),
      verbatimTextOutput('text')
    )
  )
)