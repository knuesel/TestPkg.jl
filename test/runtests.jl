using TestPkg
using Test

using Documenter
DocMeta.setdocmeta!(TestPkg, :DocTestSetup, :(using TestPkg); recursive=true)
doctest(TestPkg)

@testset "TestPkg.jl" begin
  @test f1(5) == 10
end
