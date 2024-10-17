
void main() {
// print("Hello, World!");



 var people = People("Angel",26);
 people.showDetails();

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