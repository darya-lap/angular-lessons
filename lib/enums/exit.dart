class Exit {
  final String value;

  const Exit._(this.value);

  static const Exit frontDoor = Exit._('Front Door');
  static const Exit backDoor = Exit._('Back Door');

  @override
  String toString() => value;
}