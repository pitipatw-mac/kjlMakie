# kjlMakie

Makie theme for light/dark mode. Mostly tested/intended for 2D vector plotting in half-width journal formatting (ie text sizes are sized to be legible in half-width format). Will most likely not work `WGLMakie` backend.

3D plots are set up without spines or axes, these should be manually reintroduced via `axis.xspinevisible = true`, etc. when displaying 3D numerical data.