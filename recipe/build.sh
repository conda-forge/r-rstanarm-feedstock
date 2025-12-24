#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

export TBB_INC=${PREFIX}/include
cp ${RECIPE_DIR}/Makevars src
if [[ ${build_platform} != ${target_plaform} ]]; then
    sed -i 's/R_HOME/BUILD_PREFIX/' configure
fi

export DISABLE_AUTOBREW=1
$R CMD INSTALL --build . ${R_ARGS}
