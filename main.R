

legend(x = "right", legend = c("subway stations", "r"))
library(mapsf)
# Définition d'un thème
mf_theme(bg = "#232525", fg = "#A9B7C6",
         mar = c(.5,.5,2,.5),
         tab = FALSE, pos = "left",inner = F,
         line = 1.5,
         cex = 1.2)
# Import du jeu de données d'exemple
mtq <- mf_get_mtq()
# Affichage d'une ombre pour une couche de polygones
mf_shadow(mtq)
# Affichage d'une couche de polygones
mf_map(mtq, add = TRUE)
# Affichage d'une flèche nord
mf_arrow()
# Affichage d'une échelle
mf_scale(size = 5)
# Afficher les crédits
mf_credits(txt = "T. Giraud, 2021 - mapsf 0.1.1")
# Affichage d'un titre
mf_title()
# Afficher une annotation
mf_annotation(mtq[14, ],
              txt = "Ceci est\nune annotation")


# mf_theme(bg = "#232525", fg = "#A9B7C6", mar = c(.5,.5,2,.5),
#          tab = FALSE, pos = "left",inner = F, line = 1.5, cex = 1.2 )

a <- list(bg = "#232525", fg = "#A9B7C6", mar = c(.5,.5,2,.5),
     tab = FALSE, pos = "left",inner = F, line = 1.5, cex = 1.2)

mf_init(x = mtq, theme = a, export = "png", filename = "map01.png", width = 460, res = 96)
mf_map(mtq, add = TRUE)
mf_title('type = "base"')
dev.off()


mf_init(x = mtq, theme = a, export = "png", filename = "map02.png", width = 460, res = 96)
mf_map(mtq, add = TRUE)
mf_map(mtq, var = "POP", type = "prop", inches = .4)
mf_title('type = "prop"')
dev.off()


mf_init(x = mtq, theme = a, export = "png", filename = "map03.png", width = 460, res = 96)
mf_map(mtq, var = "MED", type = "choro", leg_val_rnd = 0, add = T)
mf_title('type = "choro"')
dev.off()



mf_init(x = mtq, theme = a, export = "png", filename = "map04.png", width = 460, res = 96)
mf_map(mtq, var = "STATUS", type = "typo", border = "grey20", add = TRUE)
mf_title('type = "typo"')
dev.off()


mf_init(x = mtq, theme = a, export = "png", filename = "map05.png", width = 460, res = 96)
mf_map(mtq, add = TRUE)
mf_map(mtq, var = "STATUS", type = "symb", pch = 21:23, cex = 2, border = "black")
mf_title('type = "symb"')
dev.off()


mf_init(x = mtq, theme = a, export = "png", filename = "map06.png", width = 460, res = 96)
mf_map(mtq)
mf_map(mtq, var = "POP", type = "grad", breaks = c(686,10000,50000,82502),
       leg_frame = FALSE, cex = c(1, 2.5, 4), leg_pos = "bottomleft")
mf_title('type = "grad"')
dev.off()

mf_init(x = mtq, theme = a, export = "png", filename = "map07.png", width = 460, res = 96)
mf_map(mtq, add = T)
mf_map(mtq, var = c("POP", "MED"), type = "prop_choro", inches = .4, leg_val_rnd = c(-2,-2))
mf_title('type = "prop_choro"')
dev.off()


mf_init(x = mtq, theme = a, export = "png", filename = "map08.png", width = 460, res = 96)
mf_map(mtq, add = T)
mf_map(mtq, var = c("POP", "STATUS"), type = "prop_typo", inches = .4, leg_pos = c("topright", "bottomleft"))
mf_title('type = "prop_typo"')
dev.off()

mf_init(x = mtq, theme = a, export = "png", filename = "map09.png", width = 460, res = 96)
mf_map(mtq, add = T)
mf_map(mtq, var = c("STATUS", "MED"), type = "symb_choro", pch = 21:23, border = "black",
       cex = 2, leg_val_rnd = -2)
mf_title('type = "symb_choro"')
dev.off()

