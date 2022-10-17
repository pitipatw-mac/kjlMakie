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
trans2blue = cgrad([:transparent, blue])

# custom color gradient (from PixelFrame)
c1 = colorant"#7e90b7"
c2 = colorant"#c1cbe8"
c3 = colorant"#c59e64"
c4 = colorant"#e2caa9"
c5 = colorant"#debac1"
c6 = colorant"#e1d5d7"

pastel = cgrad([c1, c2, c3, c4, c5, c6])


# text sizes
tickFontSize = 18
labelFontSize = 20
titleFontSize = 25

# font
typeface = "Arial" #IBM Plex Sans, Libre Caslon Text, Times New Roman, Neue Haas Unica Pro

kjl_light = Theme(
    backgroundcolor = :transparent,

    palette = (color = [blue, green, pink, orange, gray1, gray2, :black],
        marker = [:circle, :rect, :utriangle, :xcross]),

    Axis = (backgroundcolor = :transparent,
        xlabelfont = typeface,
        xlabelsize = labelFontSize,
        ylabelfont = typeface,
        ylabelsize = labelFontSize,
        xticklabelfont= typeface,
        xticklabelsize = labelFontSize,
        yticklabelfont = typeface,
        yticklabelsize = labelFontSize,
        titlefont = typeface,
        titlesize = titleFontSize,
        xgridcolor = gray2,
        ygridcolor = gray2,
        xgridvisible = false,
        ygridvisible = false),

    Axis3 = (backgroundcolor = :transparent,
        aspect = :data,
        titlevisible = false,
        xgridvisible = false,
        xlabelvisible = false,
        xspinesvisible = false,
        xticklabelsvisible = false,
        xticksvisible = false,
        ygridvisible = false,
        ylabelvisible = false,
        yspinesvisible = false,
        yticklabelsvisible = false,
        yticksvisible = false,
        zgridvisible = false,
        zlabelvisible = false,
        zspinesvisible = false,
        zticklabelsvisible = false,
        zticksvisible = false,
        xgridcolor = gray2,
        ygridcolor = gray2,
        zgridcolor = gray2,
        titlefont = typeface,
        xlabelfont = typeface,
        ylabelfont = typeface,
        zlabelfont = typeface,
        xticklabelfont = typeface,
        yticklabelfont = typeface,
        zticklabelfont = typeface,
        titlesize = titleFontSize,
        xlabelsize = labelFontSize,
        ylabelsize = labelFontSize,
        zlabelsize = labelFontSize,
        xticklabelsize = tickFontSize,
        yticklabelsize = tickFontSize,
        zticklabelsize = tickFontSize
        ),

    Line = (linewidth = 4,
        cycle = [:color, :marker],
        linestyle = :solid),

    Colorbar = (labelfont = typeface,
        ticklabelfont = typeface),

    Legend = (bgcolor = :white,
        framecolor = :black,
        labelfont = typeface,
        titlefont = typeface),

    Heatmap = (colormap = trans2blue,),

    Surface = (colormap = trans2blue,),

    Spy = (colormap = trans2blue,),

    Scatter = (strokewidth = 1,
        cycle = [:color, :marker],
        strokecolor = :white),
)

kjl_dark = Theme(
    textcolor = :white,

    backgroundcolor = :transparent,

    palette = (color = [blue, green, pink, orange, gray1, gray2, :white],
        marker = [:circle, :rect, :utriangle, :xcross]),

    Axis = (backgroundcolor = :transparent,
        xlabelfont = typeface,
        xlabelsize = labelFontSize,
        ylabelfont = typeface,
        ylabelsize = labelFontSize,
        xticklabelfont= typeface,
        xticklabelsize = labelFontSize,
        yticklabelfont = typeface,
        yticklabelsize = labelFontSize,
        titlefont = typeface,
        titlesize = titleFontSize,
        bottomspinecolor = :white,
        topspinecolor = :white,
        leftspinecolor = :white,
        rightspinecolor = :white,
        xtickcolor = :white,
        ytickcolor = :white,
        xgridvisible = false,
        xgridcolor = gray1,
        ygridvisible = false,
        ygridcolor = gray1),

    Axis3 = (backgroundcolor = :transparent,
        aspect = :data,
        titlevisible = false,
        xgridvisible = false,
        xlabelvisible = false,
        xspinesvisible = false,
        xticklabelsvisible = false,
        xticksvisible = false,
        ygridvisible = false,
        ylabelvisible = false,
        yspinesvisible = false,
        yticklabelsvisible = false,
        yticksvisible = false,
        zgridvisible = false,
        zlabelvisible = false,
        zspinesvisible = false,
        zticklabelsvisible = false,
        zticksvisible = false,
        xspinecolor_1 = :white,
        xspinecolor_2 = :white,
        xspinecolor_3 = :white,
        xlabelcolor = :white,
        xticklabelcolor = :white,
        xtickcolor = :white,
        yspinecolor_1 = :white,
        yspinecolor_2 = :white,
        yspinecolor_3 = :white,
        ylabelcolor = :white,
        yticklabelcolor = :white,
        ytickcolor = :white,
        zspinecolor_1 = :white,
        zspinecolor_2 = :white,
        zspinecolor_3 = :white,
        zlabelcolor = :white,
        zticklabelcolor = :white,
        ztickcolor = :white,
        titlefont = typeface,
        xlabelfont = typeface,
        ylabelfont = typeface,
        zlabelfont = typeface,
        xticklabelfont = typeface,
        yticklabelfont = typeface,
        zticklabelfont = typeface,
        titlesize = titleFontSize,
        xlabelsize = labelFontSize,
        ylabelsize = labelFontSize,
        zlabelsize = labelFontSize,
        xticklabelsize = tickFontSize,
        yticklabelsize = tickFontSize,
        zticklabelsize = tickFontSize,
        xgridcolor = gray1,
        ygridcolor = gray1,
        zgridcolor = gray1,
        ),

    Line = (linewidth = 4,
        cycle = [:color, :marker],
        linestyle = :solid),

    Colorbar = (labelfont = typeface,
        ticklabelfont = typeface),

    Legend = (bgcolor = :black,
        framecolor = :white,
        labelfont = typeface,
        titlefont = typeface),

    Heatmap = (colormap = trans2blue,),

    Surface = (colormap = trans2blue,),

    Spy = (colormap = trans2blue,),

    Scatter = (strokewidth = 1,
        cycle = [:color, :marker],
        strokecolor = :white),
)
