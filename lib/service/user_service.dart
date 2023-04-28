import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../model/user_model.dart';

class ApiService {
  List<User> user = [];

  Future<List<User>> getData() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    var data = jsonDecode(response.body.toString());

    try {
      if (response.statusCode == 200) {
        for (Map<String, dynamic> i in data) {
          user.add(User.fromJson(i));
        }
        return user;
      }
    } on Exception catch (e) {
      HttpException("$e");
    }
    return user;
  }
}
