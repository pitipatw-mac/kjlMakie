"""
discretizes a color gradient into discrete colors
"""
function discretize(n::Int; colormap = :tempo)
    return [cgrad(colormap, [0., 1.])[z] for z ∈ range(0., 1., length = n)]
end