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