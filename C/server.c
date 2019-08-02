#include <netdb.h>
#include <netinet/in.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define MAX 80
#define PORT 8080
#define SA struct sockaddr


void func(char sockfd) {
  int buff[MAX];
  int n;

  for (;;) {
    bzero(buff, MAX); 
    read(sockfd, buff, sizeof(buff));
    printf("From client: %s\t To client : ", buff);
    bzero(buff, MAX);

    n = 0;
    while((buff[n+1] = getchar()) != '\n')
      ;

    write(sockfd, buff, sizeof(buff));

  }

}
