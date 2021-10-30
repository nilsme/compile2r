#!/usr/local/bin/Rscript --vanilla

# add library with installed miniCRAN
.libPaths(c(.libPaths(), "/opt/library"))

# Set CRAN mirror
cran_mirror <- Sys.getenv("CRAN_MIRROR")

# get command line arguments
args <- commandArgs(TRUE)

# get dependencies
pkgs <- miniCRAN::pkgDep(args)

# build binary packages for all packages including dependencies
install.packages(pkgs,
                 repos = cran_mirror,
                 lib = '/opt/library',
                 INSTALL_opts = '--build')
