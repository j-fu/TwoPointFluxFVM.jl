using Test

@time begin
    @time begin
        print("         test-geomspace:")
        include("test-geomspace.jl")
    end
    @time begin
        print("         OneSpeciesNonlinearPoisson:")
        include("../examples/OneSpeciesNonlinearPoisson.jl")
        @test OneSpeciesNonlinearPoisson.main() ≈ 0.3371249631439964
    end

    @time begin
        print("         TwoSpeciesNonlinearPoisson:")
        include("../examples/TwoSpeciesNonlinearPoisson.jl")
        @test TwoSpeciesNonlinearPoisson.main() ≈ 0.7117546972922056
    end

    @time begin
        print("                        IonicLiquid:")
        include("../examples/IonicLiquid.jl")
        @test IonicLiquid.main() ≈ 0.9999546021312723
        @test IonicLiquid.main(dlcap=true) ≈ .010759276468375045
    end

    @time begin
        print("                 NonlinearPoisson2D:")
        include("../examples/NonlinearPoisson2D.jl")
        @test NonlinearPoisson2D.main() ≈ 0.3554284760906605
    end

    @time begin
        print("        NonlinearPoisson2D_Reaction:")
        include("../examples/NonlinearPoisson2D_Reaction.jl")
        @test NonlinearPoisson2D_Reaction.main() ≈ 0.014566189535134827
    end
    @time begin
        print("NonlinearPoisson2D_BoundaryReaction:")
        include("../examples/NonlinearPoisson2D_BoundaryReaction.jl")
        @test NonlinearPoisson2D_BoundaryReaction.main() ≈ 0.008761335823958986
    end
    @time begin
        print(" NonlinearPoisson1D_BoundarySpecies:")
        include("../examples/NonlinearPoisson1D_BoundarySpecies.jl")
        @test NonlinearPoisson1D_BoundarySpecies.main() ≈ 0.22631106953924143
    end
    @time begin
        print(" NonlinearPoisson2D_BoundarySpecies:")
        include("../examples/NonlinearPoisson2D_BoundarySpecies.jl")
        @test NonlinearPoisson2D_BoundarySpecies.main() ≈ 0.0020781361856598
    end
        print("                                all:")
end
