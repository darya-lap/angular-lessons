import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_tour_of_heroes/components/dog_thought/dog_thought.dart';
import 'package:angular_tour_of_heroes/enums/location.dart';
import 'package:angular_tour_of_heroes/components/human/human.dart';
import 'package:angular_tour_of_heroes/services/house_door_service.dart';

@Component(
  selector: 'dog',
  templateUrl: 'dog.html',
  styleUrls: ['dog.css'],
    changeDetection: ChangeDetectionStrategy.OnPush,
    directives: [
    DogThought,
    NgIf
  ],
  providers: [
    Human
  ]
)
class Dog {

  final HouseDoorService _houseDoorService;

  @Input()
  String name = 'Noname :(';

  Dog(this._houseDoorService);

  Location _location = Location.house;
  String praiseLabel = 'Praise for ';
  String _praise = 'your dog';

  String get location => _location.value;
  String get praise => _praise;

  @Output()
  Stream<String> get onDogRequest => _onDogRequestController.stream;

  final StreamController<String> _onDogRequestController= StreamController<String>();

  final imgUrl = "https://img.buzzfeed.com/buzzfeed-static/static/2016-05/26/13/enhanced/buzzfeed-prod-fastlane03/enhanced-12472-1464282228-16.png";

  void doWoof() {
    _onDogRequestController.add('($name) Just woofed ^_^');
  }

  void handlePraise(String newPraise) {
    _praise = newPraise;
  }

  void tryToPlayInGarden() {
    _houseDoorService.isDoorOpened
        ? changeLocation(Location.garden)
        : askForOpenDoor();
  }

  void tryToComeHome() {
    _houseDoorService.isDoorOpened
        ? changeLocation(Location.house)
        : askForOpenDoor();
  }

  void changeLocation(Location newLocation) {
    _location = newLocation;
    _onDogRequestController.add('($name) Woof! I am in ${newLocation.value} now');
  }

  void askForOpenDoor() {
    final text = _location == Location.house
      ? 'play in garden'
      : 'come home';
    _onDogRequestController.add('($name) Woof! I want to $text but the door is closed :(');
  }
}