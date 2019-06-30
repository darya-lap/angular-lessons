import 'package:angular_tour_of_heroes/services/door_services/house_door_service.dart';

class BackDoorService extends HouseDoorService {
  @override
  int timeToOpenDoor = 5;

  @override
  int timeToCloseDoor = 3;

  @override
  String doorName = 'back';

  @override
  bool isDoorOpened = true;
}