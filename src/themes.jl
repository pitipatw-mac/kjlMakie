green  = colorant"#48B674"
blue = colorant"#3EA8DE"
red = colorant"#EA2127"
orange = colorant"#F9A11D"
gray1 = colorant"#B2B2B2"
gray2 = colorant"#808080"

red2blue = cgrad([red, gray1, blue])
green2blue = cgrad([green, gray1, blue])
white2blue = cgrad([:white, blue])
white2red = cgrad([:white, red])
trans2blue = cgrad([:transparent, blue])

# text sizes
size1 = 18
size2 = 20
size3 = 25

# font
typeface = "Arial" #IBM Plex Sans, Libre Caslon Text, Times New Roman

kjl_light = Theme(
    backgroundcolor = :transparent,

    Axis = (backgroundcolor = :transparent,
        xlabelfont = typeface,
        xlabelsize = size2,
        ylabelfont = typeface,
        ylabelsize = size2,
        xticklabelfont= typeface,
        xticklabelsize = size1,
        yticklabelfont = typeface,
        yticklabelsize = size2,
        titlefont = typeface,
        titlesize = size3,
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
        zticksvisible = false
        ),

    Lines = (linewidth = 4,
        linestyle = :solid),

    Colorbar = (labelfont = typeface,
        ticklabelfont = typeface),

    Legend = (bgcolor = :white,
        framecolor = :black),

    cycle = [green, blue, orange, red, gray1, gray2, :black],

    Heatmap = (colormap = white2blue,),

    Surface = (colormap = white2blue,)
)

kjl_dark = Theme(
    textcolor = :white,
    backgroundcolor = :transparent,
    Axis = (backgroundcolor = :transparent,
        xlabelfont = typeface,
        xlabelsize = size2,
        ylabelfont = typeface,
        ylabelsize = size2,
        xticklabelfont= typeface,
        xticklabelsize = size1,
        yticklabelfont = typeface,
        yticklabelsize = size1,
        titlefont = typeface,
        titlesize = size3,
        bottomspinecolor = :white,
        topspinecolor = :white,
        leftspinecolor = :white,
        rightspinecolor = :white,
        xtickcolor = :white,
        ytickcolor = :white,
        xgridvisible = false,
        xgridcolor = :white,
        ygridvisible = false,
        ygridcolor = :white),

    Axis3 = (backgroundcolor = :transparent,
        aspect = :data,
        titlevisible = false,
        xgridvisible = false,
        xlabelvisible = false,
        xspinesvisible = false,
        xspinecolor = :white,
        xticklabelsvisible = false,
        xticksvisible = false,
        ygridvisible = false,
        ylabelvisible = false,
        yspinesvisible = false,
        yspinecolor = :white,
        yticklabelsvisible = false,
        yticksvisible = false,
        zgridvisible = false,
        zlabelvisible = false,
        zspinesvisible = false,
        zspinecolor = :white,
        zticklabelsvisible = false,
        zticksvisible = false,
        ),

    Lines = (linewidth = 4,
        linestyle = :solid),

    Colorbar = (labelfont = typeface,
        ticklabelfont = typeface),

    Legend = (bgcolor = :black,
        framecolor = :white),

    cycle = [green, blue, orange, red, gray1, gray2, :black],

    Heatmap = (colormap = white2blue,),

    Surface = (colormap = white2blue,)
)

# Tests

set_theme!(kjl_dark_ibm)
x = collect(0:0.1:2pi)
begin
    fig = Figure()
    ax = Axis(fig[1,1], 
        xlabel = "test label",
        ylabel = "Another label",
        title = "Test Title")
    for i = 1:3
        lines!(x .+ rand(x), sin.(x), 
            label = "Line " * string(i))
    end

    axislegend(ax)
    fig
end

h = rand(20,20)
t = collect(1:20)

begin
    fig = Figure()
    ax = Axis(fig[1,1],
        xlabel = "Dimension 1",
        ylabel = "Dimension 2")

    heatmap!(h)

    fig
end

begin
    fig = Figure()
    ax = Axis3(fig[1,1])

    surface!(t, t, h, colormap = :deep)

    fig
end