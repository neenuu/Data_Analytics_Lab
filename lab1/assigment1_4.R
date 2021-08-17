{
  num <- as.integer(readline(prompt = "Enter a number: "))
  # iterate 10 times
  for(i in 1:10) {
    print(paste(num,'x', i, '=', num*i))
  }
}