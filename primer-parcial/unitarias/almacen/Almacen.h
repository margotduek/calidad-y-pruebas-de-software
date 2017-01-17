#include <iostream>
#include <vector>

template<class T>
class Almacen{
 private:
  std::vector<T> ingredients;
 public:
  Almacen(){}
  Almacen(int capacity){
    std::vector<T> data(capacity);
  }
  ~ Almacen(){}
  void push_back(T number){
    ingredients.push_back(number);
  }
  void deleten(int pos){
    ingredients.erase(ingredients.beguin()+pos);
  }
  T get_value(int pos){
    return ingredients.at(pos);
  }
  bool empty(){
    return ingredients.empty();
  }
  int size(){
    return ingredients.size();
  }
};
