import 'package:dars9/pages/picker/picker_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class PickerPage extends StatelessWidget {
  // static const route = "/pickerImage";

  const PickerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("PickerPage")),
      body: Center(
        child: Builder(builder: (context) {
          final file = context.watch<PickerProvider>().imageFile;
          if (file == null) {
            return const Text(
              "NO IMAGE",
              style: TextStyle(fontSize: 32),
            );
          }
          return Image.file(
            file,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          );
        }),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              context.read<PickerProvider>().loadImage(
                    ImageSource.camera,
                    enableCropper: true,
                  );
            },
            child: const Icon(CupertinoIcons.camera),
          ),
          const SizedBox(width: 8),
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              context.read<PickerProvider>().loadImage(
                    ImageSource.gallery,
                    enableCropper: false,
                  );
            },
            child: const Icon(CupertinoIcons.photo),
          ),
        ],
      ),
    );
  }
}
