class HouseDoorService {
  bool _isDoorOpened = false;

  bool get isDoorOpened => _isDoorOpened;

  void openDoor() {
    _isDoorOpened = true;
  }

  void closeDoor() {
    _isDoorOpened = false;
  }
}