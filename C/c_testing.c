#include<stdio.h>
#include "minunit.h"

int tests_run = 0;
int i = 5;


char * test_1() {
  mu_assert("error, i != 5", i == 5);
  return 0;
}

char * test_2() {
  mu_assert("error, i != 5", i == 7);
  return 0;
}

char * tests() {
  mu_run_test(test_1);
  mu_run_test(test_2);
  return 0;
}

int main() {
  char *result = tests();
  if (result != 0)
    printf("%s\n", result);
  else
    printf("ALL TESTS PASSED!");
  printf("Tests run: %d\n", tests_run);
  return result != 0;

}
