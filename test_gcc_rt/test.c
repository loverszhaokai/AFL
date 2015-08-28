#include <stdio.h>

int init(int p1, int p2)
{
  printf("===init(p1=%d, p2=%d)===\n", p1, p2);
  printf("===This is init funtion===\n");
  printf("===This function should only be invoked once===\n");
  printf("===initing===\n");

  sleep(3);

  printf("===init() finish===\n");

  return 0;
}

int run(char *path)
{
  printf("===run()===\n");
  printf(">>content is:\n");

  FILE * pFile;
  char buffer [100];

  pFile = fopen (path, "r");
  if (pFile == NULL) perror ("Error opening file");
  else
  {
    while ( ! feof (pFile) )
    {
      if ( fgets (buffer , 100 , pFile) == NULL ) break;
      fputs (buffer , stdout);
    }
    fclose (pFile);
  }
  printf("\n");
  return 0;
}

void __afl_gcc_manual_init(void);

int main(int argc, char **argv)
{
  init(100, 200);

  __afl_gcc_manual_init();

  run(argv[1]);
  return 0;
}
