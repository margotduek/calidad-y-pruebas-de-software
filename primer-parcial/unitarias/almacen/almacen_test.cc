#include "gtest/gtest.h"
#include "Almacen.h"
#include <time.h>

class TimeFixture : public testing::Test{
  virtual void SetUp(){
    tiempo = time(NULL);
  }
  virtual void TearDown (){
    
    EXPECT_TRUE((time(NULL) - tiempo <= 10)) << "exedio el tiempo "; 
  }
private:
  time_t tiempo;
};


//first you should out the fixture and then the tests
class Almacen_Fixture : public TimeFixture{
public:
  void SetUp(){
    
  }
  void TearDown(){

  }
  static void SetUpTestCase(){
    almacen = new Almacen<int>(10);
  }
  static void TearDouwnTestCase(){
    delete almacen;
  }

  static Almacen<int> *almacen;
  int POS =  1;
  int NUM = 3;
};

Almacen<int>* Almacen_Fixture::almacen = 0;

TEST_F(Almacen_Fixture, IsEmpty){
  sleep(11000);
  ASSERT_EQ(almacen->empty(),true);
}

TEST_F(Almacen_Fixture, PushBack){

  almacen->push_back(NUM);
  ASSERT_EQ(almacen->get_value(almacen->size()),NUM);

}
