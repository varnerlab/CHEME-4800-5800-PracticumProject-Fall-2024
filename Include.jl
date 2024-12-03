# setup paths -
const _ROOT = @__DIR__
const _PATH_TO_SRC = joinpath(_ROOT, "src");
const _PATH_TO_DATA = joinpath(_ROOT, "data");
const _PATH_TO_CONFIG = joinpath(_ROOT, "conf");

# check: packages installed?
using Pkg
if (isfile(joinpath(_ROOT, "Manifest.toml")) == false) # have manifest file, we are good. Otherwise, we need to instantiate the environment
    Pkg.activate("."); Pkg.resolve(); Pkg.instantiate(); Pkg.update();
end

# load packages -
using HTTP
using JSON
using DataFrames
using Test
using CSV
using Statistics
using Dates
using LinearAlgebra
using FileIO
using TOML
using PrettyTables

# load my codes -
include(joinpath(_PATH_TO_SRC, "Types.jl"));
include(joinpath(_PATH_TO_SRC, "Factory.jl"));
include(joinpath(_PATH_TO_SRC, "Network.jl"));
include(joinpath(_PATH_TO_SRC, "Handler.jl"));
include(joinpath(_PATH_TO_SRC, "Compute.jl"));