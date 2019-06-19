import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_tour_of_heroes/components/dog_thought/dog_thought.dart';

@Component(
  selector: 'dog',
  templateUrl: 'dog.html',
  styleUrls: ['dog.css'],
  directives: [
    DogThought
  ]
)
class Dog {

  @Input()
  String name = 'Noname :(';

  String praiseLabel = 'Praise for ';

  String _praise = 'I like to be your dog :)';

  String get praise => _praise;

  @Output()
  Stream<String> get onWoof => _onWoofController.stream;

  final StreamController<String> _onWoofController= StreamController<String>();


  final imgUrl = "https://img.buzzfeed.com/buzzfeed-static/static/2016-05/26/13/enhanced/buzzfeed-prod-fastlane03/enhanced-12472-1464282228-16.png";

  void doWoof() {
    _onWoofController.add(name + " woofed ^_^");
  }

  void handlePraise(String newPraise) {
    _praise = newPraise;
  }

}