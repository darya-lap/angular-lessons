import 'package:angular/angular.dart';
import 'package:house_with_dogs/components/house_component/house_component.dart';
import 'package:house_with_dogs/models/dog.dart';
import 'package:house_with_dogs/models/room.dart';
import 'package:house_with_dogs/modules/app_module.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app.html',
  changeDetection: ChangeDetectionStrategy.OnPush,
  directives: [
    HouseComponent
  ],
  providers: appModule
)
class AppComponent {
  String name = 'Dogs in my house';
  String humanName = 'Tom';

  List<Dog> dogs = [Dog(1,'Lucky'), Dog(2,'Teddy'), Dog(3,'Jackie'), Dog(4,'Nadya'),];
  List<Room> rooms = [Room(1, 'Sun'), Room(2, 'Blue Sky'), Room(3, 'Do not disturb'), Room(4, 'Sunflower')];
  Map<int, int> roomToDog = {1:1, 2:2, 3:3, 4:4};
}