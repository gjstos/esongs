import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app/app_module.dart';

const parseAppId = 'YOUR_ID';
const parseAppURL = 'https://parseapi.back4app.com';
const masterKey = 'YOUR_KEY';

void main() => runApp(ModularApp(module: AppModule()));
