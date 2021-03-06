################################################
"""
Control parameter structure for Newton method.

Fields:

    tol_absolute::Float64 # Tolerance (in terms of norm of Newton update)
    tol_relative::Float64 # Tolerance (relative to the first residual)
    damp_initial::Float64      # Initial damping parameter
    damp_growth::Float64  # Damping parameter growth factor
    max_iterations::Int32     # Maximum number of iterations
    max_lureuse::Int32 # Maximum number of reuses of lu factorization
    tol_linear::Float64 # Tolerance of iterative linear solver
    verbose::Bool      # Verbosity


"""
mutable struct NewtonControl
    tol_absolute::Float64 # Tolerance (in terms of norm of Newton update)
    tol_relative::Float64 # Tolerance (relative to the first residual)
    damp_initial::Float64      # Initial damping parameter
    damp_growth::Float64  # Damping parameter growth factor
    max_iterations::Int32     # Maximum number of iterations
    max_lureuse::Int32 # Maximum number of reuses of lu factorization
    tol_linear::Float64 # Tolerance of iterative linear solver
    verbose::Bool      # Verbosity
    NewtonControl()=NewtonControl(new())
end

################################################
"""
    NewtonControl()
    
Default constructor
"""
function NewtonControl(this)
    this.tol_absolute=1.0e-10
    this.tol_relative=1.0e-10
    this.damp_initial=1.0
    this.damp_growth=1.2
    this.max_lureuse=0
    this.tol_linear=1.0e-4
    this.verbose=false
    this.max_iterations=100
    return this
end

