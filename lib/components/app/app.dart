import 'package:angular/angular.dart';
import 'package:house_with_dogs/components/house/house.dart';
import 'package:house_with_dogs/modules/app_module.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app.html',
  changeDetection: ChangeDetectionStrategy.OnPush,
  directives: [
    House
  ],
  providers: appModule
)
class AppComponent {
  String name = 'Dogs in my house';
  String humanName = 'Tom';
}