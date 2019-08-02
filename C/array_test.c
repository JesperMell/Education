#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
  int i,y;
  int *ip;

  printf("Enter first number: ");
  i = getchar();
  ip = &i;
  y = i + 3;
    
  printf("%p\n", &i);
  printf("%p\n", ip);
  printf("%x\n", *ip);
}
