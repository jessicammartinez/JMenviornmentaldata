n = 12345
vec_1 = sample(12, n, replace = TRUE)
head(vec_1)
vec_2=vec_1==3
vec_2
n = 12345
vec_1 = sample(12, n, replace = TRUE)
head(vec_1)
length(vec_1)
sum(vec_1 == 3)
n = 10
vec_1 = sample(12, n, replace = TRUE)
paste0("Sum of elements with value 3: ", sum(vec_1 == 3))
print(vec_1)
##question 6##

 
for (i in 1:10)
{
  print(paste0("This is loop iteration ", i))
}
##question7##
n=5

for (i in 1:n)
{
  print(i)
}
##question8##
n=17
vec_1=sample(10,n, replace=TRUE)
for(i in 1:n)
  {print(
     paste0("The element of vec_1 at index: "  ,i,  " is ",
            vec_1[i]))
}
##question 9##


create_and_print_vec = function( n, min =1 , max =10)
{
  my_random_vec=sample(min:max, n, replace=TRUE)
  
  for (i in 1:n)
  {print(
    paste0("The element at index: " ,i, " is ",
           my_random_vec[i]))
  }
} 
create_and_print_vec(n=5, min=1, max=10)

