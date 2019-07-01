
#include <stdlib.h>
#include <stdio.h>

#pragma omp requires unified_shared_memory

int main(int argc, char *argv[])
{
  int dep = 0;

  #pragma omp target device(2) nowait map(tofrom: dep) depend(out: dep)
  {
    dep++;
  }

  #pragma omp target device(3) nowait map(tofrom: dep) depend(in: dep)
  {
    dep++;
  }
  #pragma omp taskwait

  if (dep == 2) {
    printf("completed with 0 errors\n");
  } else {
    printf("completed with a error:\n");
    printf("dep should be 2, but is %d\n", dep);
  }

  return EXIT_SUCCESS;
}
