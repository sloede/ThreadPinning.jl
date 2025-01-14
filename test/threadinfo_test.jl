using Test
using ThreadPinning

for (system, lscpustr) in ThreadPinning.lscpu_SYSTEMS
    @test isnothing(threadinfo())
    @test isnothing(threadinfo(; groupby = :numa))
    @test isnothing(threadinfo(; groupby = :sockts))
    @test isnothing(threadinfo(; groupby = :cores))
    @test isnothing(threadinfo(; masks = true))
    @test isnothing(threadinfo(; color = false))
    @test isnothing(threadinfo(; hints = true))
    @test isnothing(threadinfo(; hyperthreading = true))
    @test isnothing(threadinfo(; blocksize = 5))
    @test isnothing(threadinfo(; blas = true))
end
