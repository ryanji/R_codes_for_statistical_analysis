
### Use Lavaan to Path Model          ###
### Created by Ryan Ji on NoV 11, 2018 ###

##Loadinng packages
library(lavaan)
library(semPlot)

## Reading the 'inital status nothing data'
setwd("R:/rji-11-c03/MDIdata/working/data2/pathmodel")
dir()

usedata <- read.csv("pathmodel.csv", header = T)
usedata
names(usedata)

Mod_SWL01 <- '
## specify the indirect effect 
prb_m7~a1*all
prb_m7~a2*arts
prb_m7~a3*spt
prb_m7~p*prb_m4

all~k1*prb_m4
arts~k2*prb_m4
spt~k3*prb_m4

SWL_m7 ~ c1*all + c2*arts + c3*spt + b*prb_m7

# naming the new parameter estiamte of indirect effect ab, which is a*b

a1b := a1*b
a2b := a2*b
a3b := a3*b
pb:  = p*b

# naming the new parameter estiamte of total effect d
d1 := c1 + (a1*b)
d2 := c2 + (a2*b) 
d3 := c3 + (a3*b)
'

###################################################
## Model for Self-concept
Mod_SLF01 <- '

## specify the indirect effect 
prb_m7~a1*all
prb_m7~a2*arts
prb_m7~a3*spt
prb_m7~p*prb_m4

all~k1*prb_m4
arts~k2*prb_m4
spt~k3*prb_m4

slf_m7 ~ c1*all + c2*arts + c3*spt + b*prb_m7

# naming the new parameter estiamte of indirect effect ab, which is a*b

a1b := a1*b
a2b := a2*b
a3b := a3*b
pb:  = p*b

# naming the new parameter estiamte of total effect d
d1 := c1 + (a1*b)
d2 := c2 + (a2*b) 
d3 := c3 + (a3*b)
'

## Model for optimism
Mod_OPT01 <- '
# specify the indirect effect 
prb_m7~a1*all
prb_m7~a2*arts
prb_m7~a3*spt
prb_m7~p*prb_m4

all~k1*prb_m4
arts~k2*prb_m4
spt~k3*prb_m4

opt_m7 ~ c1*all + c2*arts + c3*spt + b*prb_m7

# naming the new parameter estiamte of indirect effect ab, which is a*b

a1b := a1*b
a2b := a2*b
a3b := a3*b
pb:  = p*b

# naming the new parameter estiamte of total effect d
d1 := c1 + (a1*b)
d2 := c2 + (a2*b) 
d3 := c3 + (a3*b)
'


## Model for Well Being
Mod_WELL01 <- '
# specify the indirect effect 
prb_m7~a1*all
prb_m7~a2*arts
prb_m7~a3*spt
prb_m7~p*prb_m4

all~k1*prb_m4
arts~k2*prb_m4
spt~k3*prb_m4

q57_g7 ~ c1*all + c2*arts + c3*spt + b*prb_m7

# naming the new parameter estiamte of indirect effect ab, which is a*b

a1b := a1*b
a2b := a2*b
a3b := a3*b
pb:  = p*b

# naming the new parameter estiamte of total effect d
d1 := c1 + (a1*b)
d2 := c2 + (a2*b) 
d3 := c3 + (a3*b)
'
####################################################################
##### Scenario 2 THE model without k1, k2  k3#################
## Model for Statisfaction of Life ###

Mod_SWL02 <- '
## specify the indirect effect 
prb_m7~a1*all
prb_m7~a2*arts
prb_m7~a3*spt
prb_m7~p*prb_m4


SWL_m7 ~ c1*all + c2*arts + c3*spt + b*prb_m7

# naming the new parameter estiamte of indirect effect ab, which is a*b

a1b := a1*b
a2b := a2*b
a3b := a3*b
pb:  = p*b

# naming the new parameter estiamte of total effect d
d1 := c1 + (a1*b)
d2 := c2 + (a2*b) 
d3 := c3 + (a3*b)
'

###################################################
## Model for Self-concept
Mod_SLF02 <- '

## specify the indirect effect 
prb_m7~a1*all
prb_m7~a2*arts
prb_m7~a3*spt
prb_m7~p*prb_m4


slf_m7 ~ c1*all + c2*arts + c3*spt + b*prb_m7

# naming the new parameter estiamte of indirect effect ab, which is a*b

a1b := a1*b
a2b := a2*b
a3b := a3*b
pb:  = p*b

# naming the new parameter estiamte of total effect d
d1 := c1 + (a1*b)
d2 := c2 + (a2*b) 
d3 := c3 + (a3*b)
'

## Model for optimism
Mod_OPT02 <- '
# specify the indirect effect 
prb_m7~a1*all
prb_m7~a2*arts
prb_m7~a3*spt
prb_m7~p*prb_m4


opt_m7 ~ c1*all + c2*arts + c3*spt + b*prb_m7

# naming the new parameter estiamte of indirect effect ab, which is a*b

a1b := a1*b
a2b := a2*b
a3b := a3*b
pb:  = p*b

# naming the new parameter estiamte of total effect d
d1 := c1 + (a1*b)
d2 := c2 + (a2*b) 
d3 := c3 + (a3*b)
'


## Model for Well Being
Mod_WELL02 <- '
# specify the indirect effect 
prb_m7~a1*all
prb_m7~a2*arts
prb_m7~a3*spt
prb_m7~p*prb_m4

q57_g7 ~ c1*all + c2*arts + c3*spt + b*prb_m7

# naming the new parameter estiamte of indirect effect ab, which is a*b

a1b := a1*b
a2b := a2*b
a3b := a3*b
pb:  = p*b

# naming the new parameter estiamte of total effect d
d1 := c1 + (a1*b)
d2 := c2 + (a2*b) 
d3 := c3 + (a3*b)
'

####################################################################
##### Scenario 3 THE model without covariate#################
## Model for Statisfaction of Life ###

Mod_SWL03 <- '
## specify the indirect effect 
prb_m7~a1*all
prb_m7~a2*arts
prb_m7~a3*spt


SWL_m7 ~ c1*all + c2*arts + c3*spt + b*prb_m7

# naming the new parameter estiamte of indirect effect ab, which is a*b

a1b := a1*b
a2b := a2*b
a3b := a3*b

# naming the new parameter estiamte of total effect d
d1 := c1 + (a1*b)
d2 := c2 + (a2*b) 
d3 := c3 + (a3*b)
'

###################################################
## Model for Self-concept
Mod_SLF03 <- '

## specify the indirect effect 
prb_m7~a1*all
prb_m7~a2*arts
prb_m7~a3*spt


slf_m7 ~ c1*all + c2*arts + c3*spt + b*prb_m7

# naming the new parameter estiamte of indirect effect ab, which is a*b

a1b := a1*b
a2b := a2*b
a3b := a3*b

# naming the new parameter estiamte of total effect d
d1 := c1 + (a1*b)
d2 := c2 + (a2*b) 
d3 := c3 + (a3*b)
'

## Model for optimism
Mod_OPT03 <- '
# specify the indirect effect 
prb_m7~a1*all
prb_m7~a2*arts
prb_m7~a3*spt


opt_m7 ~ c1*all + c2*arts + c3*spt + b*prb_m7

# naming the new parameter estiamte of indirect effect ab, which is a*b

a1b := a1*b
a2b := a2*b
a3b := a3*b

# naming the new parameter estiamte of total effect d
d1 := c1 + (a1*b)
d2 := c2 + (a2*b) 
d3 := c3 + (a3*b)
'

## Model for Well Being
Mod_WELL03 <- '
# specify the indirect effect 
prb_m7~a1*all
prb_m7~a2*arts
prb_m7~a3*spt

q57_g7 ~ c1*all + c2*arts + c3*spt + b*prb_m7

# naming the new parameter estiamte of indirect effect ab, which is a*b

a1b := a1*b
a2b := a2*b
a3b := a3*b

# naming the new parameter estiamte of total effect d
d1 := c1 + (a1*b)
d2 := c2 + (a2*b) 
d3 := c3 + (a3*b)
'

#####################################################################

sink('path_analysiS_three_scenarios.txt', append=T)
##Define Function to run the Lavaan functions ##

path_model<-function(model, model_name)
    {
    cat("\n")
    cat(paste(model_name,"|","Sobel (delta) Testing"))
    cat("\n")
    
    model_fit <- sem(model, data = usedata)
    summary(model_fit, fit.measures=TRUE, standardize=TRUE, rsquare=TRUE)

    cat("\n")
    cat(paste(model_name,"|","Request bootstrap standard errors, draws=2000"))
    cat("\n")
    
    model_boot<- sem(model, data = usedata, se= "bootstrap", bootstrap = 2000)
    summary(model_boot, fit.measures=TRUE, standardize=TRUE, rsquare=TRUE)
    
    cat("\n")
    cat(paste(model_name,"|","estimate the indirect and the total effects"))
    cat("\n")

    parameterEstimates(model_boot, boot.ci.type="bca.simple",level=0.95, 
                       ci=TRUE,standardized = FALSE)
    }

path_model(Mod_SWL01,"SWL1")
path_model(Mod_SWL02,"SWL2")
path_model(Mod_SWL03,"SWL3")
path_model(Mod_SLF01,"SLF1")
path_model(Mod_SLF02,"SLF2")
path_model(Mod_SLF03,"SLF3")
path_model(Mod_OPT01,"OPT1")
path_model(Mod_OPT02,"OPT2")
path_model(Mod_OPT03,"OPT3")
path_model(Mod_WELL01,"WELL1")
path_model(Mod_WELL02,"WELL2")
path_model(Mod_WELL03,"WELL3")

sink()


# spec <-lapply (1:3, function(x, name){
#   name = c("Mod_OPT0", "Mod_SWL0", "Mod_SLF0", "Mod_WELL0")
#   var=paste0(name,x)
#   var_name=lapply(var,as.name)
#   return(var_name)
# })
# 
# spec_list=unlist(spec)
# spec_list
# 
# 
# spec_name <-lapply (1:3, function(x, name){
#   name = c("Mod_OPT0", "Mod_SWL0", "Mod_SLF0", "Mod_WELL0")
#   var=paste0(name,x)
#   #var_name=lapply(var,as.name)
#   return(var)
# })
# 
# spec_name_list=unlist(spec_name)
# 
# for (model in spec_list){
#   for (names in spec_name_list){
#     path_model(model, names)
#   }
# }
#   
# 
# for (model in spec_list){ print (model)}
# for (model in spec_name_list){ print (model)} 








