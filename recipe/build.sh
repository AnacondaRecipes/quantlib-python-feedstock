#!/bin/bash
echo "Building ${PKG_NAME}."

./autogen.sh
./configure PYTHON CXXFLAGS='-O1'
make -C Python
make -C Python check
make -C Python wheel
${PYTHON} -m pip install Python/dist/QuantLib-*.whl --no-deps --ignore-installed --no-build-isolation -vvv
