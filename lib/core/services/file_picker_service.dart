import 'dart:async';
import 'dart:io';

import 'package:file_picker/file_picker.dart';

final class FilePickerManager {
  FilePickerManager._();

  static final FilePickerManager _instance = FilePickerManager._();

  static FilePickerManager get instance => _instance;

  Future<File?> pickPDF() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    final path = result?.files.single.path;
    if (result != null && path != null) {
      return File(path);
    }
    return null;
  }

  Future<File?> pickFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'jpg', 'jpeg', 'png'],
    );
    final path = result?.files.single.path;
    if (result != null && path != null) {
      return File(path);
    }
    return null;
  }

  //Image Picker
  Future<File?> pickImage() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );
    final path = result?.files.single.path;
    if (result != null && path != null) {
      return File(path);
    }
    return null;
  }

  //Image Picker as Base64
  Future<String?> pickImageAsBase64() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );
    final path = result?.files.single.path;
    if (result != null && path != null) {
      final file = File(path);
      return file.readAsBytesSync().map((e) => e.toRadixString(16)).join();
    }
    return null;
  }
}
