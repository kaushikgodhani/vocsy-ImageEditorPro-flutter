class NodeJsList {
  final List<String> list;
  NodeJsList({this.list});

  List<String> get code {
    var model = <String>[];
    list.forEach((element) {
      var data = xBetweenText(element, '', ': {');
      model.add('$data: req.body.$data \n');
    });
    return model;
  }
}

class NodeJsListValidator {
  final List<String> list;
  NodeJsListValidator({this.list});

  List<String> get code {
    var model = <String>[];
    list.forEach((element) {
      var data = xBetweenText(element, '', ': {');
      model.add("$data: 'required'");
    });
    return model;
  }
}

String xBetweenText(String text, String start, String end) {
  var str = text.toString();

  final startIndex = str.indexOf(start);
  final endIndex = str.indexOf(end, startIndex + start.length);

  return str.substring(startIndex + start.length, endIndex);
}

class NodeRoutesData extends NodeRoutesDataParams<List<String>> {
  NodeRoutesData(List<String> data) : super(data);
  List<String> get code => data;
}

class NodeRoutesDataParams<T> {
  final T data;

  NodeRoutesDataParams(this.data);
}
