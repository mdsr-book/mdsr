library(hexSticker)
library(magick)

cover <- "https://images.tandf.co.uk/common/jackets/amazon/978149872/9781498724487.jpg"

sticker(
  image_read(cover),
  package = "", h_color = "#6486C0", h_fill = "#AB3241",
  p_y = 1.53, p_size = 24, 
  filename = here::here("data-raw", "hex_mdsr.png"),
  s_x = 1, s_y = 0.95, 
  s_width = 2, s_height = 2,
  white_around_sticker = TRUE,
  url = "beanumber.github.io/mdsr2e", u_color = "white", u_size = 5, u_angle = 90, u_x = 1.8, u_y = 0.57
)


