import 'dart:async';

abstract class HouseDoorService {

  int timeToOpenDoor;
  int timeToCloseDoor;
  String doorName;
  bool isDoorOpened;

  Future<void> openDoor() {
    return Future.delayed(Duration(seconds: timeToOpenDoor),() {
      isDoorOpened = true;
    });
  }

  Future<void> closeDoor() {
    return Future.delayed(Duration(seconds: timeToCloseDoor),() {
      isDoorOpened = false;
    });
  }
}