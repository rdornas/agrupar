library(tidyverse)

AGRUPAR <- data.frame(stringsAsFactors=FALSE,
          V1 = c("Guilherme Francisco do Nascimento Pinto",
                 "Marcos de Paulo Ramos", "Rubem Augusto da Paixão Dornas",
                 "Mariana Elissa Vieira de Souza", "Marlon Fernandes de Souza",
                 "Luciana Eler Franca", "Diego Macedo", "Sande Oliveira Santos",
                 "Luiz Gustavo de Souza Paula", "Pedro Navarro Cardoso Vale",
                 "Thiago Juarez Ferreira de Araújo", "Camila Palhares Teixeira",
                 "Natalia Silva de Souza", "Clara Nina",
                 "Nayhara Freitas Martins Gomes", "Paulo Henrique Góes Pinto", "Tatiana Cristina Brant",
                 "Rafael Tagliatti Heredia"),
          V2 = c("guilhermefnp2@gmail.com", "marcosramos.ufv@gmail.com",
                 "rapdornas@gmail.com", "mari_elissa@hotmail.com",
                 "marlonfernandesdesouza@gmail.com", "luciana_eler@yahoo.com.br",
                 "diegorm@ufmg.br", "sandeoliveira@live.com", "lgustavosouzap@gmail.com",
                 "pncvgeo@yahoo.com.br", "tgo_dmx@hotmail.com",
                 "camila.teixeira@unifemm.edu.br", "Natalia.eagriamb@gmail.com",
                 "claranina@gmail.com", "nayhara_martins@yahoo.com.br", "paulohgoesp@gmail.com",
                 "tatianabrant@gmail.com", "rtagliattiheredia@gmail.com"),
          V3 = c("PPG-AMSA", "PPG-AMSA", "PPG-AMSA", "PPG-AMSA", "PPG-AMSA",
                 "PPG-AMSA", "PPG-AMSA", "PPG-AMSA", "PPG-AMSA", "IGC - UFMG",
                 "PPG-AMSA", "UNIFEMM", "PPG-AMSA", "PPG-AMSA", "PPG-Geografia",
                 "UFMG/Transportes", "PPG-Geografia", "UFMG/Transportes"),
          V4 = c(1L, 1L, 3L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 3L, 1L, 1L, 1L,
                 1L, 1L, 1L)
)

as.tibble(AGRUPAR) %>%
  rename(Nome = V1,
         Email = V2,
         Instituicao = V3,
         Conhecimento = V4) %>% 
  filter(Email != "rapdornas@gmail.com") %>% 
  count(Conhecimento) %>% 
  add_row(Conhecimento = 4, n = 0) %>% 
  add_row(Conhecimento = 5, n = 0) %>% 
  ggplot(., aes(x = Conhecimento, y = n)) +
  geom_bar(stat = "identity") +
  scale_y_continuous(breaks = seq(0,14,2)) +
  labs(x = "Conhecimento em R", y = "Número de pessoas") + 
  ggsave("Plots/Constit_agrupar.png", last_plot(), dpi = 600, units = "cm", width = 15.5, height = 7.5)
