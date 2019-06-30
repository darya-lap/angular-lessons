import 'package:angular/angular.dart';
import 'package:angular_tour_of_heroes/services/house_door_service.dart';

@Component(
    selector: 'human',
    templateUrl: 'human.html',
    styleUrls: ['human.css'],
    changeDetection: ChangeDetectionStrategy.OnPush,
    directives: [
      NgFor
    ]
)
class Human {

  @Input()
  String name;

  final HouseDoorService _houseDoorService;

  String imgUrl = 'https://cdn.fishki.net/upload/post/2017/09/19/2384827/4e243f39f11dd607800fa6f72cd71da0.jpg';

  Human(this._houseDoorService);

  void openDoor() {
    _houseDoorService.openDoor();
  }

  void closeDoor() {
    _houseDoorService.closeDoor();
  }
}