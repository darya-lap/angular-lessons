import 'dart:async';
import 'package:house_with_dogs/api/dog_dto.dart';
import 'package:house_with_dogs/api/room_dto.dart';
import 'package:house_with_dogs/api/room_to_dog_dto.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DogHouseApi {
  Future<Iterable<DogDto>> getDodDto() async {
    final url = 'fake_api/dogs.json';
    var resp = await http.get(url);
    var body = resp.body;
    var dogs = json.decode(body) as List;
    return dogs.map((d) => DogDto.fromJson(d)).toList();
  }

  Future<Iterable<RoomDto>> getRoomDto() async {
    final url = 'fake_api/rooms.json';
    var resp = await http.get(url);
    var body = resp.body;
    var rooms = json.decode(body) as List;
    return rooms.map((r) => RoomDto.fromJson(r)).toList();
  }

  Future<Iterable<RoomToDogDto>> getRoomToDogDto() async {
    final url = 'fake_api/room_to_dog.json';
    var resp = await http.get(url);
    var body = resp.body;
    var roomToDog = json.decode(body) as List;
    return roomToDog.map((r) => RoomToDogDto.fromJson(r)).toList();
  }
}