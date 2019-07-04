import 'dart:async';

import 'package:house_with_dogs/api/dog_house_api.dart';
import 'package:house_with_dogs/models/dog.dart';
import 'package:house_with_dogs/models/room.dart';

class DogHouseManager {
  final DogHouseApi _dogHouseApi;

  DogHouseManager(this._dogHouseApi);

  Future<Iterable<Dog>> getDogs() async {
    var dogsDto = await _dogHouseApi.getDodDto();
    return dogsDto.map((d) => Dog(d.id, d.name)).toList();
  }

  Future<Iterable<Room>> getRooms() async {
    var roomsDto = await _dogHouseApi.getRoomDto();
    return roomsDto.map((r) => Room(r.id, r.roomName)).toList();
  }

  Future<Map<int,int>> getRoomToDogMap() async {
    Map<int, int> res = {};
    var roomToDogDto = await _dogHouseApi.getRoomToDogDto();
    roomToDogDto.forEach((val) {
      res[val.roomId] = val.dogId;
    });

    return res;
  }
}