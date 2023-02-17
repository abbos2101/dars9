import 'package:dars9/core/utils/navigator_extensions.dart';
import 'package:dars9/pages/fonts/font_page.dart';
import 'package:dars9/pages/picker/picker_page.dart';
import 'package:dars9/pages/picker/picker_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

final mainKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: mainKey,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 4,
          titleTextStyle: TextStyle(color: Colors.black),
        ),
        fontFamily: GoogleFonts.aldrich().fontFamily,
      ),
      darkTheme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.black54,
          elevation: 4,
          titleTextStyle: TextStyle(color: Colors.white),
        ),
        fontFamily: GoogleFonts.alice().fontFamily,
      ),
      routes: {
        Routes.picker.name: (context) {
          return ChangeNotifierProvider(
            create: (context) => PickerProvider(
              ImagePicker(),
              ImageCropper(),
            ),
            child: const PickerPage(),
          );
        },
        Routes.font.name: (context) => const FontPage(),
      },
      initialRoute: Routes.font.name,
    );
  }
}
