const defdir = joinpath(Pkg.dir("DatasetsCF"), "datasets")

function getmovielensdata(dir)
    mkpath(dir)
    path = download("http://files.grouplens.org/datasets/movielens/ml-100k.zip")
    run(unpack_cmd(path,dir,".zip", ""))
end

function getmovielensdata1m(dir)
    mkpath(dir)
    path = download("http://files.grouplens.org/datasets/movielens/ml-1m.zip")
    run(unpack_cmd(path,dir,".zip", ""))
end

function MovieLens()::Persa.TimeCFDataset
  file = "$(defdir)/ml-100k/u.data"

  isfile(file) || getmovielensdata(defdir)

  file = readtable(file, separator = ' ', header = false)

  df = DataFrame()

  df[:user] = file[:,1]
  df[:item] = file[:,2]
  df[:rating] = file[:,3]
  df[:timestamp] = file[:,4]

  return Persa.Dataset(df)
end

function MovieLens1M()::Persa.TimeCFDataset
  file = "$(defdir)/ml-1m/ratings.dat"

  isfile(file) || getmovielensdata1m(defdir)

  file = readtable(file, separator = ':', header = false)

  df = DataFrame()

  df[:user] = file[:,1]
  df[:item] = labelencode(labelmap(file[:,3]), file[:,3])
  df[:rating] = file[:,5]
  df[:timestamp] = file[:,7]

  return Persa.Dataset(df)
end
