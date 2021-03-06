# README

> This project compiles binary packages for R running on Fedora 34.

## Set CRAN mirror and R version

Edit `.env` to edit CRAN mirror. A list of possible mirrors is listed here:
<https://cran.r-project.org/mirrors.html>

## Set R packages to be compiled

Export package names as an environment variable. E.g.

```Shell script
export PKGS='Cairo png'
```

> All R dependencies are checked with `miniCRAN` and are also compiled during
> the compiler run.

## Start the compiler

```Shell script
docker-compose up
```

## R packages and R-base

All binary packages are placed in `./pkgs` and an archived version of the used
R runtime is placed in `./R-base`.
