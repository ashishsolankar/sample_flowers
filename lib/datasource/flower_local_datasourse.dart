import 'dart:convert';

import 'package:flutter/services.dart';

import 'entity.dart';
import 'flower_model.dart';

class FlowerLocalData {
  @override
  Future<List<Flowers>>? getFlowerList() async {
    String data = await rootBundle.loadString('assets/flower.json');
    var jsonResult =
        (json.decode(data) as List).map((i) => FlowerModel.fromMap(i)).toList();
    return jsonResult;
  }
}
