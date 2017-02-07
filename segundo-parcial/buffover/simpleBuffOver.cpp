#include <stdio.h>
#include <cstring>
#include <stdlib.h>

int authenticate(char* pass){
  int auth = 0;
  char password[16];
  strcpy(password, pass);
  if(strcmp(password, "1234567890") == 0){
    auth = 1;
  }
  return auth;
}

int main(int argc, char** argv){
  authenticate(argv[1])?printf("access granted \n"):printf("access denied 'n");
}


/*
int main(int argc, char** argv){
  char array1[8];
  char array2[8];
  int value = 10;

  strcpy(array1, "arrayOne");
  strcpy(array2, "arrayTwo");
  
  printf("array 1 is at %p with value %s\n", array1, array1);
  printf("array 2 is at %p with value %s\n", array2, array2);
  printf("value is at %p with value %i\n\n\n", &value, value);



  strcpy(array1, "arrayOne");
  strcpy(array2, argv[1]);
  
  printf("array 1 is at %p with value %s\n", array1, array1);
  printf("array 2 is at %p with value %s\n", array2, array2);
  printf("value is at %p with value %i\n", &value, value);



  
  return 0;
  
}
*/
