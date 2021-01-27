using TestPkg
using Test

@testset "TestPkg.jl" begin
  @test f1(5) == 10
end
