start_new_history
ls
cd results/
vim test.c
ls
vim results/compile.cmd 
cd /usr/local/
cd -
cd results/
l
ls
ldd results/a.out 
echo $LD_LIBRARY_PATH
./results/a.out 
vim test.c 
ls
scp gbercea@tulgb005:/tmp/test.c test-alexey.c
ls
diff test.c test-alexey.c
cd results/
ls
rm -rf test-alexey.c 
cd results/
ls
cd results/
scp gbercea@tulgb005:/tmp/a.ll a-alexey.ll
diff a.ll a-alexey.ll
cd results/
cd -
vim Makefile 
cd ../t-reduction
