#include <iostream>
using namespace std;

class Base{
 public:
  virtual int dosomething() = 0;
};


class Child1 : public Base{
 public:
  int dosomething(){
    cout << "I am child 1";
    return 1; //Flag it's ok 
  }

};
 
class Child2 : public Base {
 public:
  int dosomething(){
    cout << "I am child 2";
    return 1; // Flag it's ok 
  }
};


class Child3 : public Base {
  int value;
 public:
 Child3(int value) : value(value){}
  
  int dosomething(){
    cout << "I am child 3 with value " << value << endl;
    return 1; // Flag it's ok 
  }
};
