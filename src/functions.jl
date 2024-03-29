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

function labelize!(axis::Axis)
    axis.titlevisible = !axis.titlevisible[]
    axis.xgridvisible = !axis.xgridvisible[]
    axis.xlabelvisible = !axis.xlabelvisible[]
    # axis.xspinesvisible = !axis.xspinesvisible[]
    axis.xticklabelsvisible = !axis.xticklabelsvisible[]
    axis.xticksvisible = !axis.xticksvisible[]

    axis.ygridvisible = !axis.ygridvisible[]
    axis.ylabelvisible = !axis.ylabelvisible[]
    # axis.yspinesvisible = !axis.yspinesvisible[]
    axis.yticklabelsvisible = !axis.yticklabelsvisible[]
    axis.yticksvisible = !axis.yticksvisible[]
end

"""
Scale fontsizes
"""
function labelscale!(axis::Axis, factor::Union{Float64, Int64})
    axis.xlabelsize = labelFontSize * factor
    axis.ylabelsize = labelFontSize * factor
    axis.xticklabelsize = tickFontSize * factor
    axis.yticklabelsize = tickFontSize * factor
    axis.titlesize = titleFontSize * factor
end

function labelscale!(axis::Axis3, factor::Union{Float64, Int64})
    axis.titlesize = titleFontSize * factor
    axis.xlabelsize = labelFontSize * factor
    axis.ylabelsize = labelFontSize * factor
    axis.zlabelsize = labelFontSize * factor
    axis.xticklabelsize = tickFontSize * factor
    axis.yticklabelsize = tickFontSize * factor
    axis.zticklabelsize = tickFontSize * factor
end

function resetlabelscale!(axis::Axis)
    axis.xlabelsize = labelFontSize
    axis.ylabelsize = labelFontSize
    axis.xticklabelsize = tickFontSize
    axis.yticklabelsize = tickFontSize
    axis.titlesize = titleFontSize
end

function resetlabelscale!(axis::Axis3)
    axis.titlesize = titleFontSize
    axis.xlabelsize = labelFontSize
    axis.ylabelsize = labelFontSize
    axis.zlabelsize = labelFontSize
    axis.xticklabelsize = tickFontSize
    axis.yticklabelsize = tickFontSize
    axis.zticklabelsize = tickFontSize
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

function gridtoggle!(axis::Axis)
    axis.xgridvisible = !axis.xgridvisible[]
    axis.ygridvisible = !axis.ygridvisible[]
end

function gridtoggle!(axis::Axis3)
    axis.xgridvisible = !axis.xgridvisible[]
    axis.ygridvisible = !axis.ygridvisible[]
    axis.zgridvisible = !axis.zgridvisible[]
end