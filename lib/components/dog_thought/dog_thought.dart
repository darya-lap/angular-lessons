import 'package:angular/angular.dart';

@Component(
    selector: 'dog-thought',
    templateUrl: 'dog_thought.html',
    changeDetection: ChangeDetectionStrategy.OnPush,
    directives: [
      NgFor
    ]
)
class DogThought implements OnChanges {

  @Input()
  String praise;

  String _thought;

  String get thought => _thought;

  @override
  void ngOnChanges(Map<String, SimpleChange> changes) {
    _thought = 'I am happy to be $praise';
  }
}