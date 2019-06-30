import 'package:house_with_dogs/services/door_services/house_door_service.dart';

class FrontDoorService extends HouseDoorService {
  @override
  int timeToOpenDoor = 3;

  @override
  int timeToCloseDoor = 4;

  @override
  String doorName = 'front';

  @override
  bool isDoorOpened = false;
}