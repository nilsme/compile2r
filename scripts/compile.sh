#!/bin/bash
PKGS=$1

# start compiler script
Rscript /opt/scripts/compile.R ${PKGS}

# move binary packages
mv *.tar.gz /opt/pkgs

# archive R runtime
tar cvzf /opt/R-base/R-base.tar.gz /opt/R
