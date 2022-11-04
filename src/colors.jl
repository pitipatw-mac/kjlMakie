# base colours
green  = colorant"#48B674"
blue = colorant"#3EA8DE"
red = colorant"#EA2127"
orange = colorant"#F9A11D"
gray1 = colorant"#B2B2B2"
gray2 = colorant"#808080"
pink = colorant"#FF7BAC"

red2blue = cgrad([red, :white, blue])
green2blue = cgrad([green, :white, blue])
pink2blue = cgrad([pink, :white, blue])

white2blue = cgrad([:white, blue])
white2red = cgrad([:white, red])
white2pink = cgrad([:white, pink])
trans2blue = cgrad([:transparent, blue])

# custom color gradient (from PixelFrame)
c1 = colorant"#7e90b7"
c2 = colorant"#c1cbe8"
c3 = colorant"#c59e64"
c4 = colorant"#e2caa9"
c5 = colorant"#debac1"
c6 = colorant"#e1d5d7"

pastel = cgrad([c1, c2, c3, c4, c5, c6])