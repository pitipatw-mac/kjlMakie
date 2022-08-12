![Dark mode 2d](examples/2d_dark.png)

# kjlMakie

Makie theme for light/dark mode. Mostly tested/intended for 2D vector plotting (`CairoMakie`) in half-width journal formatting (ie text sizes are sized to be legible in half-width format). Will most likely not work with the `WGLMakie` backend.

3D plots are set up without spines or axes, these should be manually reintroduced via `axis.xspinevisible = true`, etc. when displaying 3D numerical data.

Background colours are all set to transparent to allow for placement in non-white/non-black scenarios.

# to install

`]add https://github.com/keithjlee/kjlMakie`

then: `using kjlMakie, CairoMakie`

and either:

`set_theme!(kjl_light)`

or 

`with_theme(kjl_light) do:`

