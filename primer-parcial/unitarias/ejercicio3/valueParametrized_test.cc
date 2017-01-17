#include "gtest/gtest.h"
#include "functions.h"

class FixValParam : public testing::TestWithParam<int>{
public:
  void SetUp(){}
  void TearDown(){}
  
};

TEST_P(FixValParam, Pares){
  if(GetParam() %2 == 0){
    EXPECT_EQ(true, isEven(GetParam()));
  }else{
    EXPECT_EQ(false, isEven(GetParam()));   
  }
}

TEST_P(FixValParam, Impares){
  if(GetParam() %2 ==0){
    EXPECT_EQ(false, isOdd(GetParam()));
  }else{
    EXPECT_EQ(true, isOdd(GetParam()));
  }
}

// INSTANTIATE_TEST_CASE_P(Values, FixValParam, testing::Values(2,4,6,8,-99,53));
// int array[] = {1,2,3,4,5,6,7,8,8,9,0};
// INSTANTIATE_TEST_CASE_P(Values, FixValParam, testing::ValuesIn(array));

INSTANTIATE_TEST_CASE_P(values, FixValParam, testing::Range(-10, 50, 1));

/*
Typed_test
 Fixture
    - Con constructor que crea instancia de Base
    - Atributo de tipo Base --> "a"
    - Hereda de testing:Test
    - Es un aplantilla
 Definir tipos
    - typedef testing::Types<A, B>typesNomes
 Definir TEST_CASE
    - TYPED_TEST_CASE(Fixture, typesNomes),
 Crear Test
    - TYPED_TEST(Fixture, name){}
       (Siempre usar This)
*/




