import 'dart:developer';
import 'package:file_picker_pro/file_data.dart';
import 'package:file_picker_pro/file_picker.dart';
import 'package:file_picker_pro/files.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FileData _fileData = FileData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('file_picker_pro'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              FilePicker(
                  context: context,
                  height: 100,
                  fileData: _fileData,
                  crop: true,
                  maxFileSizeInMb: 10,
                  allowedExtensions: Files.allowedAllExtensions,
                  onSelected: (fileData) {
                    _fileData = fileData;
                    print(_fileData.fileName);
                    print(_fileData.fileMimeType);
                    print(_fileData.fromWeb);
                    if (!_fileData.fromWeb) {
                      print(_fileData.path);
                    }
                    log(fileData.filePath);
                    setState(() {});
                  },
                  onCancel: (message, messageCode) {
                    log("[$messageCode] $message");
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
