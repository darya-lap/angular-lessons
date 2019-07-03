import 'package:angular/angular.dart';
import 'package:house_with_dogs/components/door/door.dart';
import 'package:house_with_dogs/components/human/human.dart';
import 'package:house_with_dogs/components/room_component/room_component.dart';
import 'package:house_with_dogs/models/dog.dart';
import 'package:house_with_dogs/models/room.dart';
import 'package:house_with_dogs/modules/house_module.dart';
import 'package:house_with_dogs/services/door_services/house_door_service.dart';

@Component(
  selector: 'house',
  templateUrl: 'house_component.html',
  styleUrls: ['house_component.css'],
  changeDetection: ChangeDetectionStrategy.OnPush,
  directives: [
    NgFor,
    NgIf,
    RoomComponent,
    Human,
    Door
  ],
  providers: houseModule
)
class HouseComponent {

  @Input()
  String humanName;

  @Input()
  List<Dog> dogs;

  @Input()
  List<Room> rooms;

  @Input()
  Map<int, int> roomToDog;

  bool desire = true;

  HouseDoorService _houseDoorService;

  final List<String> dogHouseLog = [];

  List<String> get lastDogHouseLogs =>
    dogHouseLog.length > 4
      ? dogHouseLog.sublist(dogHouseLog.length - 4)
      : dogHouseLog;

  bool get isDoorOpened => _houseDoorService.isDoorOpened;

  HouseComponent(this._houseDoorService);

  void onDogRequest(String log) {
    dogHouseLog.add(log);
  }

  void onHumanTalk(String log) {
    dogHouseLog.add(log);
  }

  Dog getDogByRoomId(int roomId) {
    return dogs.firstWhere((dog) => dog.id == roomToDog[roomId], orElse: null);
  }
}
