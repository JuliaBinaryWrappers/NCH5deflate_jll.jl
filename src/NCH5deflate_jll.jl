# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule NCH5deflate_jll
using Base
using Base: UUID
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("NCH5deflate")
JLLWrappers.@generate_main_file("NCH5deflate", Base.UUID("e13e37a3-0b6f-5aa5-ab01-71ef7757b774"))
end  # module NCH5deflate_jll
