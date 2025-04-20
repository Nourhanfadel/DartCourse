//1
class Car {
  String? brand;
  String? model;
  int? year;

  Car({this.brand, this.model, this.year});

  void CarInformation() {
    print('brand: ${brand}');
    print('model: ${model}');
    print('year: ${year}');
  }
}
//2

class Animal {
  void makeSound() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Dog barks');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Cat meows');
  }
}
//3
class BankAccount {
  double _balance = 0;
  double get balance => _balance;
  set deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    } else {
      print('Updated balance or error if deposit is invalid');
    }
  }
}


void main() {
//1
  Car car1 = Car(brand: 'Sedan', model: 'Model1', year: 2012);
  Car car2 = Car(brand: 'Jeap', model: 'model2', year: 2023);
print('Car 1:');
  car1.CarInformation();
print('Car 2:');
  car2.CarInformation();

//2
  Dog dog = Dog();
  Cat cat = Cat();

  dog.makeSound();
  cat.makeSound();

//3
BankAccount account = BankAccount();
  account.deposit = 500;
  print('Balance: ${account.balance}');
  account.deposit = -100; 

}