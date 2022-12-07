library(plumber)
pr <- plumber::plumb("/usr/scripts/helloWorld.R")
pr$run(host='0.0.0.0',port = 8000)
