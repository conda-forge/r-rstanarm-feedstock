#!/bin/bash

export TBB_INC=${PREFIX}/include

export DISABLE_AUTOBREW=1
$R CMD INSTALL --build . ${R_ARGS}
