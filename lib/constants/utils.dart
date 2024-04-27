import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

void showSnackBar(BuildContext context, String text) {
  Builder(
      builder: ((context) => Builder(
            builder: (BuildContext context) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(text)));
              return Container();
            },
          )));
}

Future<List<File>> pickImages() async {
  List<File> images = [];
  try {
    var files = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: true,
    );
    if (files != null && files.files.isNotEmpty) {
      for (var file in files.files) {
        images.add(File(file.path!));
      }
    }
  } catch (e) {
    debugPrint('${e}error in pick images');
  }
  return images;
}
