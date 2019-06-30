import 'package:angular_tour_of_heroes/services/door_services/house_door_service.dart';

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