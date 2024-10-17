void main() {
  
   var dolphin = Dolphin();
    dolphin.swim();


    var car = Vehicle.create('car');
    car.VehicleType();  
  
   var Motorcycle = Vehicle.create('motorcycle');
    Motorcycle.VehicleType();  
    
    var desconocido = Vehicle.create('avión');
    desconocido.VehicleType();  
  
}



  abstract class Animal {
  void eat();
  }

  class Dog extends Animal {
  int age;

  Dog(this. age);

  @override
  void eat() {
    if (age > 0) {
    print('The dog is eating.');
  } else {
         print('Number less than zero, the dog is not eating.');
      }
   }
  }


mixin Swimmer {
void swim() {
print('The def is swimming.');

  }
}

class Dolphin extends Animal with Swimmer {
  @override
  void eat() {
    swim();
  }
}




  abstract class Vehicle {
  Vehicle();

  void VehicleType();
 
  factory Vehicle.create(String type) { 
    if (type == 'car') { 
      return Car();
  } else if (type == 'motorcycle') { 
      return motorcycle();
    }else { 
      return UnknownVehicle();
    } 
  }
}


class Car extends Vehicle {
  @override
  void VehicleType() {
    print('This is a car.');
  }
}


class motorcycle extends Vehicle {
  @override
  void VehicleType() {
    print('This is a motorcycle.');
  }
}


class UnknownVehicle extends Vehicle {
  @override
  void VehicleType() {
   print('Unknown vehicle type.');
  }
}
