import 'dart:typed_data';

class FileData {
  bool hasFile;
  String fileName;
  String filePath;
  String fileMimeType;
  String path;
  String otherDevicePath;
  bool fromWeb;
  Uint8List? bytes;

  FileData(
      {this.hasFile = false,
      this.fileName = "",
      this.filePath = "",
      this.fileMimeType = "",
      this.path = "",
      this.otherDevicePath = "",
      this.fromWeb = false,
      this.bytes});

  factory FileData.clone(FileData fileData) {
    return FileData(
        hasFile: fileData.hasFile,
        fileName: fileData.fileName,
        filePath: fileData.filePath,
        fileMimeType: fileData.fileMimeType,
        path: fileData.path,
        otherDevicePath: fileData.otherDevicePath,
        fromWeb: fileData.fromWeb,
        bytes: fileData.bytes);
  }
}
