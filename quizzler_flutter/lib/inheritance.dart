void main() {
  Car myNormalCar = Car();
  // print(myNormalCar.numberOfSeats);
  myNormalCar.drive();
  ElectricCar myTesla = ElectricCar();
  myTesla.drive();
  myTesla.recharge();
  LevitatingCar myMagLev = LevitatingCar();
  myMagLev.drive();
  SelfDrivingCar myWaymo = SelfDrivingCar('1 Hacker Way');
  myWaymo.drive();
}

class Car {
  int numberOfSeats = 5;

  void drive() {
    // print('wheels turn...');
  }
}

class ElectricCar extends Car {
  int batteryLevel = 100;

  void recharge() {
    batteryLevel = 100;
  }
}

class LevitatingCar extends Car {
  @override
  void drive() {
    // print('Glide forward...');
  }
}

class SelfDrivingCar extends Car {
  String destination = '';

  // constructor
  SelfDrivingCar(String userSetDestination) {
    destination = userSetDestination;
  }

/*
  @override
  void drive() {
    super.drive();
    // print('Sterring towards $destination');
  }
  */
}
