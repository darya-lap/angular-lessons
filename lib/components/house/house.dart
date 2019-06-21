import 'package:angular/angular.dart';
import 'package:angular_tour_of_heroes/components/dog/dog.dart';

@Component(
  selector: 'house',
  templateUrl: 'house.html',
  styleUrls: ['house.css'],
  directives: [
    Dog,
    NgFor
  ]
)
class House {
  Iterable<String> dogNames = <String>['Lucky', 'Teddy', 'Jackie', 'Nadya'];

  final List<String> dogHouseLog = [];

  void onWoof(String log) {
    dogHouseLog.add(log);
  }
}