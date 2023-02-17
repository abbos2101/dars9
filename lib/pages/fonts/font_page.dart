import 'package:dars9/core/utils/navigator_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontPage extends StatelessWidget {
  // static const route = "/font";

  const FontPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("FontPage")),
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        onPressed: () {
          // showDialog(
          //   context: context,
          //   builder: (context) {
          //     return GestureDetector(
          //       onTap: () {},
          //       child: Container(
          //         width: double.infinity,
          //         height: double.infinity,
          //         alignment: Alignment.center,
          //         child: Container(
          //           height: 200,
          //           color: Colors.white,
          //           //appBar: AppBar(title: Text("Dialog")),
          //         ),
          //       ),
          //     );
          //   },
          // );
          //push(Routes.picker);
        },
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "alice",
              style: GoogleFonts.alice(fontSize: 32),
            ),
            const SizedBox(height: 8),
            Text(
              "aldrich",
              style: GoogleFonts.aldrich(fontSize: 32),
            ),
            const SizedBox(height: 8),
            Text(
              "inter",
              style: GoogleFonts.inter(fontSize: 32),
            ),
            const SizedBox(height: 8),
            Text(
              "roboto",
              style: GoogleFonts.roboto(fontSize: 32),
            ),
          ],
        ),
      ),
    );
  }
}
