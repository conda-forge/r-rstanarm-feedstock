#!/bin/bash

export TBB_INC=${PREFIX}/include
cp ${RECIPE_DIR}/Makevars src

export DISABLE_AUTOBREW=1
$R CMD INSTALL --build . ${R_ARGS}
