module kjlMakie

using Makie
using Colors

include("themes.jl")
include("colors.jl")
export kjl_light
export kjl_dark
export red2blue
export pink2blue
export white2blue
export pink2blue
export green
export blue
export pink
export red
export orange
export gray1
export gray2
export pastel

include("functions.jl")
export discretize
export labelize!
export labelscale!
export changefont!
export resetlabelscale!
export gridtoggle!
end # module
 
#test123