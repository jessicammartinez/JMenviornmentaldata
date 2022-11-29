install.packages("psych")
require(psych)
pairs.panels(iris)
names(iris)
pairs.panels(iris[, c("Sepal.Length", "Sepal.Width", "Petal.Length")])

install.packages("here")
require("here")
#####tryingagain####
dat_bird=read.csv(
  here("data","bird.sta.csv")
)
head(dat_bird)

dat_hab=read.csv(
  here("data", "hab.sta.csv")
)
head(dat_hab)
#merging the datasets
dat_all=merge(dat_bird,dat_hab, by=c("basin","sub","sta"))











#####
here()
here("data")

here("data", "hab.sta.csv")
here("data", "bird.sta.csv")
file.exists(here("data", "hab.sta.csv"))
read.csv(here("data", "hab.sta.csv"))
read.csv(here("data", "bird.sta.csv"))
##turning csv into data frames
dat_bird = read.csv(
  here("data", "bird.sta.csv")
)
head(dat_bird)

dat_habitat= read.csv(
  here("data","hab.sta.csv")
)
head(dat_habitat)
#merging the two data frames
dat_all= merge(dat_bird,dat_habitat, by.x= "basin", by.y="basin", all=FALSE)
head(dat_all)
plot(ba.tot ~ elev, data = dat_all)
sample(dat_all$CEWA, 100)
#presence/absence
cewa_present_absent=dat_all$CEWA>1
as.numeric(cewa_present_absent>1)
print(cewa_present_absent)
plot(x = dat_all$elev, y = cewa_present_absent)
# Function to calculate the logistic parameter a given the slope and midpoint
get_logistic_param_a = function(slope, midpoint)
{
  b = slope / 4
  return (-midpoint * (slope / 4))
}
# Function to calculate the logistic parameter b given the slope
get_logistic_param_b = function(slope)
{
  return (slope / 4)
}


# Calculate the value of the logistic function at x, given the parameters a and b.
logistic = function(x, a, b)
{
  val = exp(a + b * x)
  return(val / (1 + val))
}

# Calculate the value of the logistic function at x, given a slope and midpoint.
logistic_midpoint_slope = function(x, midpoint, slope)
{
  b = get_logistic_param_b(slope)
  a = get_logistic_param_a(slope, midpoint)
  return(logistic(x, a, b))
}
#Logistic fit 1
plot(x = dat_all$elev, y = cewa_present_absent)
curve(logistic_midpoint_slope(x, midpoint = 400, slope = 0.1), add = TRUE)
#logistic fit 2
plot(x = dat_all$elev, y = cewa_present_absent)
curve(logistic_midpoint_slope(x, midpoint = 400, slope = -0.1), add = TRUE)
#logistic fit 3

plot(x = dat_all$elev, y = cewa_present_absent, xlab="Total Basal Area", ylab="Liklihood of CEWA presence",
     pch=16,
     cex=2,
     col=alpha())
    


Z
curve(logistic_midpoint_slope(x, midpoint = 400, slope = -0.005), add = TRUE)