import 'package:flutter/material.dart';
import 'package:green_house/component/services/myservice.dart';
import 'package:green_house/view/main/app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await initialServices();

  runApp( const MyApp());
}
