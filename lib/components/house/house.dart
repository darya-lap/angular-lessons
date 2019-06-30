import 'package:angular/angular.dart';
import 'package:angular_tour_of_heroes/components/dog/dog.dart';
import 'package:angular_tour_of_heroes/components/door/door.dart';
import 'package:angular_tour_of_heroes/components/human/human.dart';
import 'package:angular_tour_of_heroes/services/house_door_service.dart';

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
    HouseDoorService
  ]
)
class House {
  Iterable<String> dogNames = <String>['Lucky', 'Teddy', 'Jackie', 'Nadya'];

  @Input()
  String humanName;

  final HouseDoorService _houseDoorService;

  final List<String> dogHouseLog = [];

  bool get isDoorOpened => _houseDoorService.isDoorOpened;

  House(this._houseDoorService);

  void onDogRequest(String log) {
    dogHouseLog.add(log);
  }
}