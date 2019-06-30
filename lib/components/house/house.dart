import 'package:angular/angular.dart';
import 'package:angular_tour_of_heroes/components/dog/dog.dart';
import 'package:angular_tour_of_heroes/components/door/door.dart';
import 'package:angular_tour_of_heroes/components/human/human.dart';
import 'package:angular_tour_of_heroes/enums/exit.dart';
import 'package:angular_tour_of_heroes/services/door_services/back_door_service.dart';
import 'package:angular_tour_of_heroes/services/dogs_like_services/dogs_like_to_use_service.dart';
import 'package:angular_tour_of_heroes/services/door_services/front_door_service.dart';
import 'package:angular_tour_of_heroes/services/door_services/house_door_service.dart';

@Component(
  selector: 'house',
  templateUrl: 'house.html',
  styleUrls: ['house.css'],
  changeDetection: ChangeDetectionStrategy.OnPush,
  directives: [
    Dog,
    NgFor,
    Human,
    Door
  ],
  providers: [
    FactoryProvider(HouseDoorService, houseDoorServiceFactory)
  ]
)
class House {
  Iterable<String> dogNames = <String>['Lucky', 'Teddy', 'Jackie', 'Nadya'];

  @Input()
  String humanName;

  bool desire = true;

  HouseDoorService _houseDoorService;

  final List<String> dogHouseLog = [];

  List<String> get lastDogHouseLogs =>
    dogHouseLog.length > 4
      ? dogHouseLog.sublist(dogHouseLog.length - 4)
      : dogHouseLog;

  bool get isDoorOpened => _houseDoorService.isDoorOpened;

  House(this._houseDoorService);

  void onDogRequest(String log) {
    dogHouseLog.add(log);
  }

  void onHumanTalk(String log) {
    dogHouseLog.add(log);
  }
}

HouseDoorService houseDoorServiceFactory(DogsLikeToUseService dogLikesService) {
  return dogLikesService.dogsLike == Exit.frontDoor ? FrontDoorService() : BackDoorService();
}
