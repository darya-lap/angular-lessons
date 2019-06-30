import 'package:angular/angular.dart';
import 'package:house_with_dogs/components/dog/dog.dart';

@Component(
  selector: 'house',
  templateUrl: 'house.html',
  styleUrls: ['house.css'],
  directives: [
    Dog,
    NgFor,
    NgIf
  ]
)
class House {
  Iterable<String> dogNames = <String>['Lucky', 'Teddy', 'Jackie', 'Nadya'];

  final List<String> dogHouseLog = [];

  void onWoof(String log) {
    dogHouseLog.add(log);
  }
}