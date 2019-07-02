import 'package:angular/angular.dart';
import 'package:house_with_dogs/services/dogs_like_services/dogs_like_to_use_back_door.dart';
import 'package:house_with_dogs/services/dogs_like_services/dogs_like_to_use_service.dart';

const appModule = [
  FactoryProvider(DogsLikeToUseService, dogsLikeToUseServiceFactory)
];

DogsLikeToUseService dogsLikeToUseServiceFactory() => DogsLikeToUseBackDoor();
//DogsLikeToUseService dogsLikeToUseServiceFactory() => DogsLikeToUseFrontDoor();