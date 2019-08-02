#include <stdio.h>
#include <stdbool.h>
#include <math.h>

bool better_prime_number(int n) {
  if(n < 2) {
    return false;
  }
  int s = sqrt(n);
  for(int i=2; i <= s; i++) {
    if(n % i == 0) {
      printf("%d , %d\n", n, i);
      return false;
    }
  }
  return true;
}

bool prime_number(int n) {
  if(n < 2) {
    return false;
  }
  for(int i=2; i<(n-1); i++) {
    if(n % i == 0) {
      printf("%d , %d\n", n, i);
      return false;
    }
  }
  return true;
}

int main() {
  printf(prime_number(2) ? "true\n" : "false\n");
  printf(prime_number(4) ? "true\n" : "false\n");
  printf(prime_number(6) ? "true\n" : "false\n");
  printf(prime_number(17) ? "true\n" : "false\n");
  printf(prime_number(2417) ? "true\n" : "false\n");

  printf("\n");

  printf(better_prime_number(2) ? "true\n" : "false\n");
  printf(better_prime_number(4) ? "true\n" : "false\n");
  printf(better_prime_number(6) ? "true\n" : "false\n");
  printf(better_prime_number(17) ? "true\n" : "false\n");
  printf(better_prime_number(2417) ? "true\n" : "false\n");

  return 0;

}
