import 'package:firexcode/src/Generator/file.dart';

class NodeModel {
  final String name;
  final String path;
  NodeModel({this.name, this.path});

  NodeRoutes create(List<String> list) {
    var content = """
    
const mongoose = require('mongoose'); 

// Declare the Schema of the Mongo model
var $name = new mongoose.Schema({
   ${list.toList().toString().replaceAll('[', '').replaceAll(']', '')}
});

//Export the model
module.exports = mongoose.model('$name', $name);
    """;
    fileCreate(path + '\\model', content, name + '.js');

    return NodeRoutes(list, name, path);
  }
}

class NodeRoutesMethod extends NodeRoutesMethodParams<String> {
  NodeRoutesMethod(String data) : super(data);
  String get code => data;
}

class NodeRoutesMethodParams<T> {
  final T data;

  NodeRoutesMethodParams(this.data);
}

class NodeModelString<T> {
  final T list;

  NodeModelString(this.list);
}

class NodeRoutes extends NodeRoutesParams {
  NodeRoutes(List<String> data, String name, String paths)
      : super(data, name, paths);
  List<String> get code => data;
  String get modelname => name;
  String get path => paths;
}

class NodeRoutesParams<T> {
  final List<String> data;
  final String name;
  final String paths;
  NodeRoutesParams(this.data, this.name, this.paths);
}
