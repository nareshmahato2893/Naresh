


df=mtcars
names(df)
catcols = c('cyl', 'vs', 'am', 'gear', 'carb')
df[,catcols] = lapply(df[,catcols], as.factor)

sapply(df, class)


hist(df$mpg)
hist(mtcars$mpg)
hist(df$mpg, breaks=10)
hist(df$mpg, breaks=c(0,10,20,50))
plot(density(df$mpg))
hist(df$mpg, freq=F)
