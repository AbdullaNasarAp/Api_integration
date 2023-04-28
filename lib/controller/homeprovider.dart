// ignore_for_file: unnecessary_null_comparison

import 'dart:developer';

import 'package:api_assignment/model/user_model.dart';
import 'package:api_assignment/service/user_service.dart';
import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  HomeProvider() {
    callFunction();
  }

  void callFunction() {
    getUserData();
  }

  bool isLoading = false;
  final controller = ScrollController();
  List<User> user = [];
  Future<void> getUserData() async {
    isLoading = true;
    notifyListeners();

    await ApiService().getData().then(
      (value) {
        if (value != null) {
          user = value;
          log(user.toString());
          notifyListeners();
          isLoading = false;
          notifyListeners();
        } else {
          isLoading = false;
          notifyListeners();
        }
      },
    );
  }
}
