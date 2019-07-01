#include <stdio.h>

#pragma omp requires unified_shared_memory

#pragma omp declare target
struct S {
  S() {
    printf("Message\n");
  };
};
#pragma omp end declare target

int main() {

  #pragma omp target
  {
    S s; 
  }
  
  return 0;
}

