class RoomDto {
  int id;
  String roomName;

  RoomDto.fromJson(Map<String, dynamic> json) {
    roomName = json['roomName'] as String;
    id = json['id'] as int;
  }
}