import 'package:angular/angular.dart';
import 'package:house_with_dogs/components/house_component/house_component.dart';
import 'package:house_with_dogs/models/dog.dart';
import 'package:house_with_dogs/models/room.dart';
import 'package:house_with_dogs/modules/app_module.dart';
import 'package:house_with_dogs/services/dog_house_manager.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app.html',
  changeDetection: ChangeDetectionStrategy.OnPush,
  directives: [
    HouseComponent
  ],
  providers: appModule
)
class AppComponent implements OnInit{
  String name = 'Dogs in the house';
  String humanName = 'Tom';
  List<Dog> dogs;
  List<Room> rooms;
  Map<int, int> roomToDog;

  final DogHouseManager _dogHouseManager;
  final ChangeDetectorRef _cdRef;

  AppComponent(this._dogHouseManager, this._cdRef);


  @override
  void ngOnInit() async {
    dogs = await _dogHouseManager.getDogs();
    rooms = await _dogHouseManager.getRooms();
    roomToDog = await _dogHouseManager.getRoomToDogMap();
//    roomToDog = {1:1, 2:2, 3:3, 4:4};
    _cdRef.markForCheck();
  }
}