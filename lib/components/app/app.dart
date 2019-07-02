import 'package:angular/angular.dart';
import 'package:house_with_dogs/components/house/house.dart';

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
