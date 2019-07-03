class DogDto {
  int id;
  String name;

  DogDto.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String;
    id = json['id'] as int;
  }
}