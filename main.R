library(mapsf)
# Définition d'un thème
mf_init(x = mtq, theme = "candy", export = "png", filename = "map10.png", width = 460, res = 96)
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
mf_annotation(mtq[14, ], halo = TRUE,
              txt = "Ceci est\nune annotation")
dev.off()

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



?par

mf_init(x = mtq, theme = "dark", export = "png", filename = "map11.png",
        width = 460, res = 96)
mf_get_mtq() %>%
  mf_shadow() %>%
  mf_map(add = TRUE) %>%
  mf_map(c("POP","STATUS"), "prop_typo")
mf_title()
dev.off()



# Import des données
mtq <- mf_get_mtq()
# Sélection d'une commune cible à
# placer dans un carton
mtq_target <- mtq[c(26),]
mf_init(x = mtq, theme = "dark",
        export = "png", filename = "map12.png",
        width = 460, res = 96)
# Affichage du fond de carte
mf_map(mtq, add = TRUE)
# Affichage de la commune cible
mf_map(mtq_inset, add = T, col = "tomato")
# Initialisation du carton
mf_inset_on(x = mtq_target, pos = "topright", cex = .4)
# Centrage du carton sur la commune cible
mf_init(mtq_inset)
# Affichage des communes
mf_map(mtq, add = T)
# Affichage de la commune cible
mf_map(mtq_inset, add = T, col = "tomato")
# Affichage d'un label
mf_label(mtq_inset, var = "LIBGEO", col = "black")
# Affichage d'une échelle
mf_scale(size = 2)
# Fermeture du carton
mf_inset_off()
# Ajout de l'habillage de la carte
mf_layout()
dev.off()





# Import des données
mtq <- mf_get_mtq()
mf_init(x = mtq, theme = "iceberg",
        export = "png", filename = "map13.png",
        width = 460, res = 96)
# Affichage du fond de carte
mf_map(mtq, add = TRUE)
# Initialisation du carton
mf_inset_on(x = "worldmap", pos = "topright",
            cex = .2)
# Affichage de la carte de situation
mf_worldmap(mtq)
# Fermeture du carton
mf_inset_off()
# Ajout du titre
mf_title(pos = "left")
dev.off()
