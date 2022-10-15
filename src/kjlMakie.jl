module kjlMakie

using Makie
using Colors

include("themes.jl")
export kjl_light
export kjl_dark
export red2blue
export white2blue
export trans2blue
export tickFontSize
export labelFontSize
export titleFontSize
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