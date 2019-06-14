---
title: "Infectious Disease Model"
<<<<<<< HEAD
author: "Kyro Grace, kgrace23@ucla.edu Irving Angeles, iangeles27@ucla.edu"
=======
author: "Kyro Grace,keytro@ucla.edu, Irving Angeles"
>>>>>>> cd1e722f37f672f8422afa9da2f4d6375cfeddcf
date: "5/29/2019"
output: html_document
---

# Infectious Disease Model Introduction
  - The infectious Disease Model is a dynamic systems model that looks at three state variables 
  regarding both fatal and non-fatal diseases and see how these variables change over time. The three state variables include infection rate, susceptibility rate, and resistance/removal rate of individuals. The user should notice that as the infection rate increases over time, the susceptibility rate will decrease due to the fact that more people have become infected, and therefore there are less individuals who are susceptible. After some time has been allotted, the recovered/resistant/removed rate should increase as the amount of individuals who either have recovered, passed away, or became resistant to the disease have increased in number. In other words, at the start of the disease, there should be no/few recovered, a smaller number of the population should be infected, and the majority of the population should be susceptibility. After enough time has past (this depends on the kind of disease), the number of susceptible and infected should go down and the majority of the population should be recovered/removed. 



# Program Justification 
  - This application allows the user to look at specific diseases that they might be studying and map the effects of that disease to this model. The infectious disease model and in turn, this application, takes into account both fatal and non-fatal diseases which means that it allows for a wide-range of diseases to be mapped out under this model. Therefore users who want to model diseases such as ebola (fatal) or chicken pox (non-fatal) can do so using this shiny app model.

 
  
# Three State Variables (Program Workflow)

  - Infectives (dI/dT) →  The number of individuals at time (t) who are infected and can transmit
    the disease.
  - Susceptibility (dS/dT)→ The number of individuals at time (t) that can get infected
  - Remove/Resistant (dR/dT) → The number of individuals at time (t) who are immune to the 
    disease.
    
  - Transmission coecient (β) → describes the instantaneous rate at which the number of infected hosts increases per infected individual.
  - Resitance Rate per Infected Individual (γ) → Individuals become resistant to this disease at the constant per rate, γ. 
    
  
    <img width="352" alt="Screenshot 2019-06-13 20 36 30" src="https://user-images.githubusercontent.com/49182927/59481872-058e8c00-8e1b-11e9-9cb6-1ee46265d6bf.png">
    
    
    
    
  [Figure 1]
  ![Screenshot (19)](https://user-images.githubusercontent.com/49182927/59481693-27d3da00-8e1a-11e9-9bf2-6e385d8eba7f.png)
    
  [Figure 2]
  ![Screenshot (21)](https://user-images.githubusercontent.com/49182927/59481696-2bfff780-8e1a-11e9-90e3-0bd28c91d46f.png)
    
  [Figure 3]
  ![Screenshot (20)](https://user-images.githubusercontent.com/49182927/59481704-2f937e80-8e1a-11e9-9b71-c97b1e69d273.png)
    
    
    
  
# Dependencies
  -User must have access to R or R studio programs.
  
  -User must have access to internet connection.
  
  - User must load the following packages: 
      1. load(shiny)
        a. Shiny is a package that allows you to make a formula interactive. 
      2. load(deSolve)
        a. deSolve is a pakcage that allows you to solve differential equations that might be in your model. 

#  Instructions
	 Click on the following Link and the shiny app should appear. 
	The parameters and the graph for the infectious disease model will appear.
	The user can change the parameters and the graph will change accordingly. 
 [Infectious Disease Model Shiny App](https://irv-irv.shinyapps.io/Infectious_Disease_Model/)
    
# Expected Output
  - As the user changes the different parameters, the graph on the right will change. 
  - The three lines that are shown on the graph correlate to the parameters that the user can  manipulate.
  
# Authors

    Kyro Grace kgrace23@ucla.edu
      -Associate of Science in Biology and Chemistry
      -Bachelor of Science in Biology, expected in June 2020, UCLA
    
    Irving Angeles iangeles27@ucla.edu
     -Bachelor of Science in Environmental Science expected in June 2019
    
    
# Acknowledgements

  - Dr.Emily Curd for teaching us the coding language, for giving us constant feedback for our project, and always encouranging us throughout the process.
  
  
  - Daniel Chavez for being patient with us everytime we would be stuck with our shiny app and more important with learning how to code.
  
  - Gaurav Kandlikar for checking over our shiny app R code and helping us fix some errors in the R code to allow the output of the graph to be scientifically accurate. 
  
# References
<<<<<<< HEAD
  - Stevens, H. Henry. 2009. A Primer of Ecology in R. Oxford, OH. Springer.
=======
  - Stevens, H. Henry. 2009. A Primer of Ecology in R. Oxford, OH. Springer.
  
>>>>>>> cd1e722f37f672f8422afa9da2f4d6375cfeddcf
