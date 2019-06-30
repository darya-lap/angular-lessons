import 'package:angular/angular.dart';

@Component(
    selector: 'door',
    templateUrl: 'door.html',
    changeDetection: ChangeDetectionStrategy.OnPush,
    directives: [
      NgFor
    ]
)
class Door {

  @Input()
  bool isDoorOpened;

  String get doorState => isDoorOpened
      ? 'Door Is Opened'
      : 'Door Is Closed';
}