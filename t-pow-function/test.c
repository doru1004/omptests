
#include <stdio.h>
#include <omp.h>
#include <math.h>

#include "../utilities/check.h"
#include "../utilities/utilities.h"

int main(void) {
  check_offloading();

  double A = 2.0;
  float B = 2.0;

  #pragma omp target map(A,B)
  {
    A = sqrt(pow(A, B)) + pow(A, 4);
  }

  printf("%lf\n",A - pow(2, 4));
  return 0;
}
