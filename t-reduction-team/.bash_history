start_new_history
ls
vim bak 
vim test.c 
rm bak
git status -uno
git commit -am "Delete backup file."
git push ibm ibm-devel
cd -
git fetch --all
cd -
cd ../t-target-parallel-for-simd/results/
vim Makefile 
cd results/
vim Makefile 
cd ../
