#include "gtest/gtest.h"
#include "hierachie.h"


typedef Base* factoryMethod();

Base* instance1(){
  return Child1;
}

Base* instance2(){
  return Child2;
}

template<int parameter>
Base* instanceConstParam(){
  return Child3(parameter);
}

class Fixture : public testing::TestWithParam<factoryMethod*>{
protected:
  Base* instance2Test;
public:
  void SetUp(){
    instance2Test = (*GetParam())();
  }
  void TearDown(){
    delete instance2Test;
    instance2Test = NULL;
  }
};

TEST_P(Fixture, testName){
  this->instance2Test->dosomething();
}

INSTANTIATE_TEST_CASE_P(NaseNAme, Fixture, testing::Values(&instance1, &instance2, &instanceConctParam<10>));
