# DatasetsCF.jl - Collection of Collaborative Datasets

[![][ci-img]][ci-url]
[![][codecov-img]][codecov-url]

**Installation**: at the Julia REPL, `Pkg.add("DatasetsCF")`

**Reporting Issues and Contributing**: See [CONTRIBUTING.md](CONTRIBUTING.md)

## Example

```
julia> using DatasetsCF

julia> dataset = DatasetsCF.MovieLens();

julia> using Persa

julia> using Statistic

julia> μ = mean(dataset)
3.52986
```

## Datasets

List of package datasets:

Dataset      | Title
-------------|------------------------------------------------------------------------
MovieLens 100k  | This is a set of 100,000 ratings given by a set of users to a set of movies.
MovieLens 1M    | This is a set of 10,000,000 ratings given by a set of users to a set of movies.


[ci-img]: https://img.shields.io/github/checks-status/JuliaRecsys/DatasetsCF.jl/master?style=flat-square
[ci-url]: https://github.com/JuliaRecsys/DatasetsCF.jl/actions

[codecov-img]: https://img.shields.io/codecov/c/github/JuliaRecsys/DatasetsCF.jl?style=flat-square
[codecov-url]: https://codecov.io/gh/JuliaRecsys/DatasetsCF.jl