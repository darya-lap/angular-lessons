import 'package:angular_tour_of_heroes/enums/exit.dart';
import 'package:angular_tour_of_heroes/services/dogs_like_services/dogs_like_to_use_service.dart';

class DogsLikeToUseFrontDoor extends DogsLikeToUseService {
  @override
  Exit dogsLike = Exit.frontDoor;
}