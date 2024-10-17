void main() {
  // print("Hola, Mundo!");



 var people = People("Angel",26);
  var empleado = Employee(people.name,people.age, 3000);

  empleado.showDetails();

}

class People {

String name;
int age;

People(this.name, this.age);

void showDetails() {
print('Name: $name');
print('Age: $age');
}
}

class Employee extends People {
double salary;

Employee(String name, int age, this.salary) : super(name, age);

 
  @override
  void showDetails() {
    super.showDetails(); 
    print('Salario: $salary');
  }
}