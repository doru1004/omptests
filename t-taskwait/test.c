#include <stdlib.h>
#include <stdio.h>

#include "../utilities/check.h"

#define PRINT(_args...)
//#define PRINT(_args...) printf(_args)

//#define SHOW_WARNING

#define N 64
#define N_MIN_EXPECTED 8 // Less is permitted but, e.g., 1 is pointless for this test

#define TRY_TASK 1
#define TASK_COMPUTE 1

int main ()
{
  int a[N], aa[N];
  int b[N], bb[N];
  int i, errors;
  int num_threads = -1;

  if (N < N_MIN_EXPECTED || N != 64) {
    printf("inconsistent settings used\n");
    return 1;
  }

  check_offloading();

  // init
  for(i=0; i<N; i++) {
    a[i] = aa[i] = i+1;
    b[i] = bb[i] = 2*i +1;
  }

  // target starts 1 team and many threads in it
  #pragma omp target map(tofrom: a, b, num_threads)
  {
    #pragma omp parallel num_threads(64)
    {
      int id = omp_get_thread_num();
      if (id == 0)
        num_threads = omp_get_num_threads();
      a[id]++;
      #pragma omp task firstprivate(id) shared(b)
      {
        int id = omp_get_thread_num();
        PRINT("hi alex 1 from  %d\n", id);
        b[id]++;

        #pragma omp task firstprivate(id) shared(b)
        {
          int id = omp_get_thread_num();
          PRINT("hi alex 2 from  %d\n", id);
          b[id]++;

          #pragma omp task firstprivate(id) shared(b)
          {
            int id = omp_get_thread_num();
            PRINT("hi alex 3 from  %d\n", id);
            b[id]++;
          }
	  // wait for child to finish
	  #pragma omp taskwait
        }
	// wait for child to finish
        #pragma omp taskwait
      }
    }
  }

  // verify
  errors = 0;
  if (num_threads < N_MIN_EXPECTED || num_threads > N) {
    printf("got a %d threads, OpenMP requires 1 to %d, program expects at least %d\n", num_threads, N, N_MIN_EXPECTED);
    ++errors;
  }


  int b_expected = 0;
  int b_result = 0;
  int warnings = 0;
  int thread_used = 0;

  for(i=0; i < num_threads; i++) {
    if (a[i] != aa[i] + 1) printf("%4i: got a %d, expected %d, error %d\n", i, a[i], aa[i] + 1, ++errors);
#if SHOW_WARNING
    // Expect that each thread at least executed one task - and not more than 10 tasks
    // Perfectly balanced would be 3 tasks but scheduling might cause slightly different results.
    // It turns out that even 0 is very common with multiple compilers (nearly always), rendering this check
    // pointless, unfortunately.
    if (b[i] < bb[i] + 1 || b[i] > bb[i] + 10)
      printf("WARNING: %4i: got b %d, expected between %d and %d, error %d\n", i, b[i], bb[i] + 1, bb[i] + 10, ++warnings);
#endif
    if (b[i] < bb[i] || b[i] > bb[i] + num_threads * 3)
      printf("%4i: got b %d, expected %d + cnt, but value is completely bogus, error %d\n", i, b[i], bb[i], ++errors);
    if (b[i] + 2 >= bb[i]) // executed at least two of the three tasks
      thread_used++;
    b_result += b[i];
    b_expected += bb[i] + 3;
  }
  if (b_expected != b_result) {
    printf("total result for b is wrong, got %d, expected %d\n", b_result, b_expected);
    errors++;
  }
  // Expect at least somewhat balanced thread use: 2 of 3 tasks processed by at least half of the threads.
  if (thread_used < num_threads/2 + num_threads % 2) {
    printf("Only %d threads of %d threads actually processed the tasks\n", thread_used, num_threads);
    errors++;
  }
  printf("got %d errors\n", errors);
  if (warnings)
   printf("got %d warnings\n", warnings);

  return errors > 0;
}
