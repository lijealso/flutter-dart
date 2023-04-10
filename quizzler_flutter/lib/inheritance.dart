void main() {
  Car myNormalCar = Car();
  print(myNormalCar.numberOfSeats);
  myNormalCar.drive();
  ElectricCar myTesla = ElectricCar();
  myTesla.drive();
}

class Car {
  int numberOfSeats = 5;

  void drive() {
    print("wheels turn...");
  }
}

class ElectricCar extends Car {
  int batteryLevel = 100;

  void recharge() {
    batteryLevel = 100;
  }
}
