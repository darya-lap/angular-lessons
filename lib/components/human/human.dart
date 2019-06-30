import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_tour_of_heroes/services/door_services/house_door_service.dart';

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

  @Output()
  Stream get onHumanTalk => _onHumanTalkController.stream;

  final StreamController<String> _onHumanTalkController = StreamController<String>();

  final HouseDoorService _houseDoorService;
  final ChangeDetectorRef _cdRef;

  bool isInProcess = false;

  String imgUrl = 'https://cdn.fishki.net/upload/post/2017/09/19/2384827/4e243f39f11dd607800fa6f72cd71da0.jpg';

  Human(this._houseDoorService, this._cdRef);

  void openDoor() {
    if (isInProcess) {
      _onHumanTalkController.add('$name I am busy at the moment and can\'t help you :(');
      return;
    }
    if (!_houseDoorService.isDoorOpened) {
      _onHumanTalkController.add('($name) I need ${_houseDoorService.timeToOpenDoor} seconds to open the ${_houseDoorService.doorName} door');
      isInProcess = true;
      _houseDoorService.openDoor().then((_){
        _cdRef.markForCheck();
        isInProcess = false;
      });
    }
  }

  void closeDoor() {
    if (isInProcess) {
      _onHumanTalkController.add('$name I am busy at the moment and can\'t help you :(');
      return;
    }
    if (_houseDoorService.isDoorOpened) {
      _onHumanTalkController.add('($name) I will close the ${_houseDoorService.doorName} door in ${_houseDoorService.timeToCloseDoor} seconds');
      isInProcess = true;
      _houseDoorService.closeDoor().then((_) {
        _cdRef.markForCheck();
        isInProcess = false;
      });
    }
  }
}