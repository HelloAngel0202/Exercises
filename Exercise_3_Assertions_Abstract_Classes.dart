

void main() {
 
  var perro = Dog(9); 
  perro.eat(); 

  
}



abstract class Animal {
void eat(); 
}


class Dog extends Animal {
int age;


Dog(this.age);

 
  @override
  void eat() {
    if (age > 0) {
      print('The dog is eating.');
    }else {
      print('Number less than zero, the dog is not eating.');
        }
  }
}




