import 'package:angular/angular.dart';
import 'package:house_with_dogs/components/house_component/house_component.dart';
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
}