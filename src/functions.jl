"""
discretizes a color gradient into discrete colors
"""
function discretize(n::Int; colormap = :tempo)
    return [cgrad(colormap, [0., 1.])[z] for z ∈ range(0., 1., length = n)]
end

"""
turn on/off labels for Axis3
"""
function labelize!(axis::Axis3)
    axis.titlevisible = !axis.titlevisible[]
    axis.xgridvisible = !axis.xgridvisible[]
    axis.xlabelvisible = !axis.xlabelvisible[]
    axis.xspinesvisible = !axis.xspinesvisible[]
    axis.xticklabelsvisible = !axis.xticklabelsvisible[]
    axis.xticksvisible = !axis.xticksvisible[]

    axis.ygridvisible = !axis.ygridvisible[]
    axis.ylabelvisible = !axis.ylabelvisible[]
    axis.yspinesvisible = !axis.yspinesvisible[]
    axis.yticklabelsvisible = !axis.yticklabelsvisible[]
    axis.yticksvisible = !axis.yticksvisible[]

    axis.zgridvisible = !axis.zgridvisible[]
    axis.zlabelvisible = !axis.zlabelvisible[]
    axis.zspinesvisible = !axis.zspinesvisible[]
    axis.zticklabelsvisible = !axis.zticklabelsvisible[]
    axis.zticksvisible = !axis.zticksvisible[]
end

"""
Scale fontsizes
"""
function labelscale!(axis::Axis, factor::Float64)
    axis.xlabelsize = axis.xlabelsize[] * factor
    axis.ylabelsize = axis.ylabelsize[] * factor
    axis.xticklabelsize = axis.xticklabelsize[] * factor
    axis.yticklabelsize = axis.yticklabelsize[] * factor
    axis.titlesize = axis.titlesize[] * factor
end

function labelscale!(axis::Axis3, factor::Float64)
    axis.titlesize = axis.titlesize[] * factor
    axis.xlabelsize = axis.xlabelsize[] * factor
    axis.ylabelsize = axis.ylabelsize[] * factor
    axis.zlabelsize = axis.zlabelsize[] * factor
    axis.xticklabelsize = axis.xticklabelsize[] * factor
    axis.yticklabelsize = axis.yticklabelsize[] * factor
    axis.zticklabelsize = axis.zticklabelsize[] * factor
end

function changefont!(axis::Axis, font::String)
    axis.titlefont = font
    axis.xlabelfont = font
    axis.ylabelfont = font
    axis.xticklabelfont = font
    axis.yticklabelfont = font
end

function changefont!(axis::Axis3, font::String)
    axis.titlefont = font
    axis.xlabelfont = font
    axis.ylabelfont = font
    axis.zlabelfont = font
    axis.xticklabelfont = font
    axis.yticklabelfont = font
    axis.zticklabelfont = font
end

# function changefont!(cbar::Colorbar, font::String)
#     cbar.labelfont = font
#     cbar.ticklabelfont = font
# end

# function changefont!(legend::Legend, font::String)
#     legend.labelfont = font
#     legend.titlefont = font
# end