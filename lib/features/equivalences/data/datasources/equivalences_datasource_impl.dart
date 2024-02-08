import 'package:flutter/material.dart';
import 'package:nutritional_equivalences_app/features/equivalences/data/data.dart';

import 'dart:convert';

import 'package:nutritional_equivalences_app/features/equivalences/domain/domain.dart';

class EquivalencesDatasourceImpl extends EquivalencesDatasource {

  var tmpJsonString = "";
  // Init data from json
  Future<String> _getData(BuildContext context) async {
    if (tmpJsonString.isNotEmpty) {
      return tmpJsonString;
    }

    const path = 'assets/data.json';
    tmpJsonString = await DefaultAssetBundle.of(context).loadString(path);
    return tmpJsonString;
  }

  @override
  Future<TimeDay> getEquivalences(BuildContext context) async {
    final jsonString = await _getData(context);
    final jsonResult = jsonDecode(jsonString);
    return TimeDayMapper.jsonToEntity(jsonResult);
  }
}