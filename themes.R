th <- c("default", "brutal", "ink",
        "dark", "agolalight", "candy", "darkula", "iceberg", "green", "nevermind",
        "jsk", "barcelona")
for (i in th){
  op <- par(no.readonly = T)
  if (i=="barcelona"){op <- par(bg="black",no.readonly = T)}
  par(bg="black",no.readonly = T)
  mf_init(mtq, theme = i)
  , export = "png",
          filename = paste0("theme_", i, ".png"), width = 460, res = 96)
par(bg="black",no.readonly = T)
  mf_shadow(mtq, add = T)
  mf_map(mtq, add = T)
  mf_title(i)
  dev.off()

  box("figure")
  par(op)
}

warnings()
x <- mf_theme("jsk")
x
