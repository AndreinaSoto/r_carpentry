cats<-data.frame(coat=c("calico","black","tabby"),weight=c(2.1,3.4,5.6),likes_string=c(1, 0, 1))
cats
write.csv(x=cats, file="data/feline.csv", row.names=FALSE)
cats<-read.csv(file = "data/feline.csv")
cats
cats$weight
cats$coat
#we discover weight 2kg light
cats$weight+2
paste("my cats is", cats$coat)
cats$coat+cats$weight
typeof(cats$weight)
typeof(cats$coat)
x<-1+4i
typeof(x)
typeof("A")
file.show("data/feline2.csv")
cats<-read.csv(file="data/feline.csv")
cats<-read.csv(file="data/feline2.csv")
str(cats$coat)
my_vector<-vector(lenght=3)
my_vector
my_vector<-vector(length = 3)
my_vector
another_vector<-vector(mode = 'character', length = 3)
another_vector
str(another_vector)
str(cats$weight)
combine_vector<-c(2,6,3)
quiz_vector<-c(2,6,3)
quiz_vector
character_vector<-c('2','4','6')
character_vector
character_coerce_to_number<-as.numeric(character_vector)
character_coerce_to_number
character_coerce_to_logic<-as.logical(character_vector)
character_coerce_to_logic
cats$likes_string
cats$likes_coerce_to_logic<-as.logical(cats$likes_string)
cats$likes_coerce_to_logic
ab_vector<-c("a","b")
ab_vector
combine_example<-c(ab_vector,"swc")
combine_example
mySeries<-1:10
mySeries
seq(10)
seq(1,10, by=.1)
vector2<-seq(10)
head(vector2, n=4)
length(vector2)
class(vector2)
typeof(vector2)
my_example<-5:8
my_example
names(my_example)
names(my_example)<-c("a", "b", "c","d")
my_example

