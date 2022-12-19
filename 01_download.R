# download functions ------------------------------------------------------

# generate captchas

img_path <- "img"

set.seed(42)
purrr::walk(1:1200, \(x) {
  captcha::captcha_generate(
    write_disk = TRUE,
    img_path,
    chars = 0:9,
    n_chars = 4,
    p_rotate = 0,
    p_line = 0,
    p_stroke = 0,
    p_noise = 0,
    p_implode = 0
  )
}, .progress = TRUE)




