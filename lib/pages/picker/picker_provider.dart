import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class PickerProvider extends ChangeNotifier {
  final ImagePicker _picker;
  final ImageCropper _cropper;

  PickerProvider(this._picker, this._cropper);

  File? _imageFile;

  // Future<void> loadImage(ImageSource source) async {
  //   final pickerFile = await _picker.pickImage(source: source);
  //   if (pickerFile != null) {
  //     _imageFile = File(pickerFile.path);
  //     notifyListeners();
  //   }
  // }

  Future<void> loadImage(
    ImageSource source, {
    bool enableCropper = true,
  }) async {
    final pickerFile = await _picker.pickImage(
      source: source,
      imageQuality: 70,
    );
    if (pickerFile != null) {
      if (enableCropper) {
        final cropperFile = await _cropper.cropImage(
          sourcePath: pickerFile.path,
          compressQuality: 70,
        );
        if (cropperFile != null) {
          _imageFile = File(cropperFile.path);
          notifyListeners();
        }
      } else {
        _imageFile = File(pickerFile.path);
        notifyListeners();
      }
    }
  }

  File? get imageFile => _imageFile;
}
