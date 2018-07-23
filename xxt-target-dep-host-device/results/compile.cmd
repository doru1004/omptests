export LIBRARY_PATH="/home/gbercea/patch-compiler/obj-release/lib:/usr/local/cuda-9.2/lib64:/usr/local/cuda-9.2/nvvm/libdevice"
export LD_LIBRARY_PATH="/home/gbercea/patch-compiler/obj-release/lib:/home/gbercea/patch-compiler/obj-release/lib:/home/gbercea/patch-compiler/obj-release/lib:/usr/local/cuda-9.2/lib64:/home/gbercea/patch-compiler/src/projects/openmp/libomptarget/omptests/t-target-dep-host-device/results:"
cd /home/gbercea/patch-compiler/src/projects/openmp/libomptarget/omptests/t-target-dep-host-device
/home/gbercea/patch-compiler/obj-release/bin/clang -v -O3 -I/home/gbercea/patch-compiler/obj-release/lib -I/home/gbercea/patch-compiler/obj-release/lib/../ -I/home/gbercea/patch-compiler/obj-release/lib/../projects/openmp/runtime/src/   -L/home/gbercea/patch-compiler/obj-release/lib -L/home/gbercea/patch-compiler/obj-release/lib -target powerpc64le-ibm-linux-gnu -mcpu=pwr8 -fopenmp=libomp -fopenmp-targets=nvptx64-nvidia-cuda /home/gbercea/patch-compiler/src/projects/openmp/libomptarget/omptests/t-target-dep-host-device/test.c -o /home/gbercea/patch-compiler/src/projects/openmp/libomptarget/omptests/t-target-dep-host-device/results/a.out
cd -


