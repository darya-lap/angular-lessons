import 'package:angular/angular.dart';
import 'package:house_with_dogs/components/dog_component/dog_component.dart';
import 'package:house_with_dogs/models/dog.dart';

@Component(
    selector: 'room',
    templateUrl: 'room_component.html',
    styleUrls: ['room_component.css'],
    changeDetection: ChangeDetectionStrategy.OnPush,
    directives: [
      DogComponent
    ]
)
class RoomComponent {

  @Input()
  Dog dog;

  @Input()
  String roomName;

  void onDogRequest(Object o) {

  }
}