import 'package:angular/angular.dart';
import 'package:angular_tour_of_heroes/components/house/house.dart';
import 'package:angular_tour_of_heroes/services/dogs_like_services/dogs_like_to_use_back_door.dart';
//import 'package:angular_tour_of_heroes/services/dogs_like_services/dogs_like_to_use_front_door.dart';
import 'package:angular_tour_of_heroes/services/dogs_like_services/dogs_like_to_use_service.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app.html',
  changeDetection: ChangeDetectionStrategy.OnPush,
  directives: [
    House
  ],
  providers:[
    FactoryProvider(DogsLikeToUseService, dogsLikeToUseServiceFactory),
  ]
)
class AppComponent {
  String name = 'Dogs in my house';
  String humanName = 'Tom';
}

DogsLikeToUseService dogsLikeToUseServiceFactory() => DogsLikeToUseBackDoor();
//DogsLikeToUseService dogsLikeToUseServiceFactory() => DogsLikeToUseFrontDoor();