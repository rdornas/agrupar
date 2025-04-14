library(ggplot2)

diamonds|>
ggplot(aes(x=carat,y=price,color=clarity))+
geom_point()+
labs(x="Carat",y="Price",title="Diamond Pricing")
