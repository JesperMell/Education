#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
  int n, i, *ptr, sum = 0;
  printf("Enter number of stuff: ");
  if (scanf("%d", &n) != 1)
    printf("This is really not an number..");


  ptr = (int*) malloc(n * sizeof(int));
  if (ptr == NULL) {
    printf("Memory not really allocated, I will die now");
    exit(0);
  }

  printf("Enter elements: ");
  for(i = 0; i < n; i++) {
    scanf("%d", ptr + i);
    sum += *(ptr + i);
  }

  printf("sum = %d", sum);
  free(ptr);
  return 0;
}
