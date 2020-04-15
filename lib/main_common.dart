import 'package:flutter/material.dart';
import 'package:fsl/config_reader.dart';
import 'package:fsl/env.dart';
import 'package:provider/provider.dart';

import 'main.dart';

Future<void> mainCommon(String env) async{
  WidgetsFlutterBinding.ensureInitialized();

  await ConfigReader.initialize();

  Color primaryColor;

  switch (env) {
    case Env.dev:
      primaryColor = Colors.blue;
      break;
    case Env.prod:
      primaryColor = Colors.red;
      break;
  }

  runApp(Provider.value(
    value: primaryColor,
    child: MyApp(),
  ));
}