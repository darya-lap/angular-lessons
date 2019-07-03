class RoomToDogDto {
  int roomId;
  int dogId;

  RoomToDogDto.fromJson(Map<String, dynamic> json) {
    roomId = json['roomId'] as int;
    dogId = json['dogId'] as int;
  }
}