import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:sample_flowers/datasource/associate.dart';

import 'associate_model.dart';

class AssociateLocalData {
  @override
  Future<List<Associate>>? getAssociateList() async {
    String data = await rootBundle.loadString('assets/associates.json');
    final List t = json.decode(data);
    final List<Associate> jsonResult = t.map((item) => AssociateModel.fromMap(item)).toList();
    return jsonResult;
  }
}
