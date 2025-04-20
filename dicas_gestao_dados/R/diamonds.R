# Example file for useful tools in RStudio
# Using library ----

library(ggplot2)

diamonds|>
ggplot(aes(x=carat,y=price,color=clarity))+
geom_point()+
labs(x="Carat",y="Price",title="Diamond Pricing")

# Using four dots ----

ggplot2::diamonds|>
  ggplot2::ggplot(ggplot2::aes(x=carat,y=price,color=clarity))+
  ggplot2::geom_point()+
  ggplot2::labs(x="Carat",y="Price",title="Diamond Pricing")

# Using use() ----

use("ggplot2",c("diamonds","ggplot","aes","geom_point","labs"))

diamonds|>
  ggplot(aes(x=carat,y=price,color=clarity))+
  geom_point()+
  labs(x="Carat",y="Price",title="Diamond Pricing")
