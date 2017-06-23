using DatasetsCF
using Base.Test

# write your own tests here
ds = DatasetsCF.MovieLens()
@test ds.users == 943
@test ds.items == 1682
@test length(ds.preferences.possibles) == 5
@test ds.preferences.min == 1
@test ds.preferences.max == 5

ds = DatasetsCF.MovieLens1M()
@test ds.users == 6040
@test ds.items == 3706
@test length(ds.preferences.possibles) == 5
@test ds.preferences.min == 1
@test ds.preferences.max == 5
