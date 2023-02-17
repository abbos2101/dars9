import 'package:dars9/main.dart';
import 'package:flutter/material.dart';

enum Routes { picker, font }

Future<dynamic> push(Routes route, {Map<String, dynamic>? arguments}) async {
  return await Navigator.pushNamed(
    mainKey.currentState!.context,
    route.name,
    arguments: arguments,
  );
}

dynamic pop([dynamic result]) async {
  return Navigator.pop(
    mainKey.currentState!.context,
    result,
  );
}
