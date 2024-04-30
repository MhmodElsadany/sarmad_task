import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sarmad_task/utilies/common.dart';

import '../model/model_datapeople.dart';
import 'package:http/http.dart' as http;

class DataService {
  Future<Model?> getData(
      {required String fname,
      required String mname,
      required String nat}) async {

    var res = await http.post(
      Uri.parse(
          '$baseUrl/api/v1/integration/focal/screen/individual'),
      headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',

      },
      body:jsonEncode( {
        'fname': fname,
        'mname': mname,
        'nat': nat,
      }),
    );

    final data = jsonDecode(res.body) as Map<String, dynamic>;
    debugPrint(data.toString(), wrapWidth: 1024);
    if (res.statusCode == 200) {

      final apiresponse = Model.fromJson(data);

      return apiresponse;
    }

    return null;
  }
}
