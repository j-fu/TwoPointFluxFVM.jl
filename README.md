TwoPointFluxFVM
===============


There will be no further development of this package. Please
find new developments in [VoronoiFVM.jl](https://github.com/j-fu/VoronoiFVM.jl)




Author: J. Fuhrmann



Solver for coupled nonlinear partial differential equations
based on the two point flux finite volume method on admissible grids.


This Julia package merges the ideas behind [pdelib](http://www.wias-berlin.de/software/pdelib/?lang=0)/fvsys with the multiple dispatch paradigm of Julia. It allows to avoid the implementation of function derivatives.  It instead uses [ForwardDiff](https://github.com/JuliaDiff/ForwardDiff.jl) and [DiffResults](https://github.com/JuliaDiff/DiffResults.jl) to evaluate user fucntions along with their jacobians.

So far this is merely a design study to learn and evaluate Julia.  
It is however aimed to be feasible at least for small projects.

It requires Julia 1.0.

## Documentation

Documentation created with [Documenter.jl](https://juliadocs.github.io/Documenter.jl/stable/index.html)
resides [here](https://www.wias-berlin.de/people/fuhrmann/TwoPointFluxFVM).

