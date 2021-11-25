import 'dart:convert';
import 'package:data_networking/Screens/home_screen_view_model.dart';
import 'package:data_networking/model/api_response_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import 'Screens/home_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) {
        return HomeScreenViewModel();
      },
      child: const HomeScreen()));
}
