import 'dart:io';

void fileCreate(String path, String content, String fileNameWithExtension) {
  Directory(path).createSync(recursive: true);
  File(path + '/' + fileNameWithExtension).writeAsStringSync(content);
}
