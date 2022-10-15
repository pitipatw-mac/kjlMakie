# kjlMakie

Makie theme for light/dark mode, as well as some commonly used utility functions. Mostly tested/intended for 2D vector plotting (`CairoMakie`) in half-width journal formatting (ie text sizes are sized to be legible in half-width format). Will most likely not work with the `WGLMakie` backend.

The two available themes are `kjl_light` and `kjl_dark`.

3D plots are set up without spines, axes, or labels. When required, use `labelize!(axis)` to toggle them on/off.

Background colours are all set to transparent to allow for placement in non-white/non-black scenarios. `GLMakie` requires a non-transparent background colour for the figure to render properly. Make sure to use `Figure(backgroundcolor = :color)` if working in `GLMakie`.

# Examples using kjlMakie
![3d](examples/PVM_clusters2.png)

![multiaxis](examples/distributions.png)

![darkmode](examples/PVM_dark.png)

# to install

`]add https://github.com/keithjlee/kjlMakie`

then: `using kjlMakie, CairoMakie`

and either:

`set_theme!(kjl_light)`

or 

`with_theme(kjl_light) do:`

# Useful functions
## Colour-based functions
`discretize` chops up a colormap into n discrete units to reference later. This is useful when plotting categorical data using a given color gradient. The output is a vector of colours that can be indexed. The default colormap is `:tempo`.

```
colorscale = discretize(10)

colorscale2 = discretize(10, colormap = :inferno)

lines(x, color = colorscale[2])
```

## Axis modification functions
These functions work on `Axis, Axis3`.

`labelize!(axis)` turns on/off the labels/decorations of an axis.

`labelscale!(axis)` scales all text/numbers by a factor (1.0 = 100% = no change). Note that the scale factor is relative to the current font sizes of the axis; using `labelscale` twice may not achieve what you want. To revert, use `resetlabelscale` below.

`resetlabelscale!(axis)` resets text/number sizes to default.

`changefont!(axis)` changes the font family (default = Arial).

```
changefont!(myaxis, "Times New Roman")
```

`gridtoggle!(axis)` turns gridlines on/off.
