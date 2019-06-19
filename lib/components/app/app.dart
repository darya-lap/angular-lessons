import 'package:angular/angular.dart';
import 'package:angular_tour_of_heroes/components/house/house.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app.html',
  directives: [
    House
  ]
)
class AppComponent {
  String name = 'Dogs in my house';
}
