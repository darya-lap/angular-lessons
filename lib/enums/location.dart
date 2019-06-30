class Location {
  final String value;

  const Location._(this.value);

  static const Location garden = Location._('Garden');
  static const Location house = Location._('House');

  @override
  String toString() => value;
}