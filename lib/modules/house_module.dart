import 'package:angular/angular.dart';
import 'package:house_with_dogs/enums/exit.dart';
import 'package:house_with_dogs/services/dogs_like_services/dogs_like_to_use_service.dart';
import 'package:house_with_dogs/services/door_services/back_door_service.dart';
import 'package:house_with_dogs/services/door_services/front_door_service.dart';
import 'package:house_with_dogs/services/door_services/house_door_service.dart';

const houseModule = [
  FactoryProvider(HouseDoorService, houseDoorServiceFactory),
];

HouseDoorService houseDoorServiceFactory(DogsLikeToUseService dogLikesService) {
  return dogLikesService.dogsLike == Exit.frontDoor ? FrontDoorService() : BackDoorService();
}