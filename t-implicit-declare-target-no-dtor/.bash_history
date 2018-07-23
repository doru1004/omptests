start_new_history
/localhd/gbercea/patch-compiler/obj-release/bin/clang++ -I/localhd/gbercea/patch-compiler/obj-release/lib -I/localhd/gbercea/patch-compiler/obj-release/lib/../ -I/localhd/gbercea/patch-compiler/obj-release/lib/../projects/openmp/runtime/src/  -std=c++11 -v -L/localhd/gbercea/patch-compiler/obj-release/lib -L/localhd/gbercea/patch-compiler/obj-release/lib -target powerpc64le-ibm-linux-gnu -mcpu=pwr8 -fopenmp=libomp -fopenmp-targets=nvptx64-nvidia-cuda -O0 -fopenmp-implicit-declare-target /localhd/gbercea/patch-compiler/src/projects/openmp/libomptarget/omptests/t-implicit-declare-target-no-dtor/test.cpp -o /localhd/gbercea/patch-compiler/src/projects/openmp/libomptarget/omptests/t-implicit-declare-target-no-dtor/results/a.out
1234
cd ../t-same-name-definitions/results/
cd results/
vim Makefile 
cd ../
