#include<stdio.h>

void func(void);
int compute(int, int);

static int counter = 5;

void func(void) {
  static int i = 5;
  i++;

  printf("i is %d and counter is %d, and compute is %d\n", i, counter, compute(i, counter));

}

int compute(x, y) {
  return x + y;
}


int main() {
  while(counter-1) {
    func();
  }
  return 0;
}

