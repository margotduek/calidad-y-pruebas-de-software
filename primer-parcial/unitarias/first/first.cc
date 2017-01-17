#include <iostream>
#include "first.h"

int factorial(int fact){
  if(fact == 0){
    return 1;
  }
  return factorial(fact -1) * fact; 
}
