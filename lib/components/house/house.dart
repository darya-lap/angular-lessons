import 'package:angular/angular.dart';
import 'package:house_with_dogs/components/dog/dog.dart';
import 'package:house_with_dogs/components/door/door.dart';
import 'package:house_with_dogs/components/human/human.dart';
import 'package:house_with_dogs/modules/house_module.dart';
import 'package:house_with_dogs/services/door_services/house_door_service.dart';

@Component(
  selector: 'house',
  templateUrl: 'house.html',
  styleUrls: ['house.css'],
  changeDetection: ChangeDetectionStrategy.OnPush,
  directives: [
    NgFor,
    NgIf,
    Dog,
    Human,
    Door
  ],
  providers: houseModule
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
