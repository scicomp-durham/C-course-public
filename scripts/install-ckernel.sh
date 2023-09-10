#! /usr/bin/env bash

python3 -m pip install --user --upgrade ckernel

python3 -m ckernel install AutoCompileKernel autocompile-gcc "Autocompile (gcc)" \
  --exe-cflags="-Wl,--no-as-needed" --exe-cxxflags="-Wl,--no-as-needed" --exe-ldflags="-lrt -ldl"
python3 -m ckernel install AutoCompileKernel autocompile-gcc-debug "Autocompile (gcc, debug)" --debug \
  --exe-cflags="-Wl,--no-as-needed" --exe-cxxflags="-Wl,--no-as-needed" --exe-ldflags="-lrt -ldl"

jupyter kernelspec list
