#include "gtest/gtest.h"
#include "OrdenamientoGenerico.h"
 

template<class instanceType>
class FixTyped : public testing::Test{
public:
  FixTyped(){
    instance2Test = new instanceType;
  }
protected:
  Ordenamiento<int>* instance2Test;
};






typedef testing::Types<Ordenamiento<int> > implementations;

TYPED_TEST_CASE(FixTyped, implementations);

TYPED_TEST(FixTyped, testName){
  int sorted[SIZE] = {1,2,4,5,6,7,8,9};
  this->instance2Test->bubble();
  for(int i = 0; i < SIZE ; i++){
    EXPECT_EQ(sorted[i], this->instance2Test->arr[i]);
  }
}

