#include <sys/random.h>
#include <errno.h>
#include <string.h>
#include <stdio.h>

int main(void)
{
  char buffer[256];
  int ret = -1;

  if ((ret = getrandom(buffer, sizeof(buffer), 0)) != sizeof(buffer))
  {
    fprintf(stderr, "Error: getrandom() failure, returned: %d, error message: '%s'\n", ret, strerror(errno));
    return 1;
  }

  printf("Success: urandom source is initialized\n");
  return 0;
}
