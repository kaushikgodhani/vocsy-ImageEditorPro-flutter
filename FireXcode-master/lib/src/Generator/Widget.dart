import 'package:firexcode/xServices.dart';

void xStless(String name, String path) {
  var widgetname = name[0].toUpperCase() + name.substring(1);
  var contents = """
import 'package:firexcode/firexcode.dart';

class $widgetname extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO 
    );
  }
}""";

  fileCreate(path, contents, widgetname + '.dart');
}

void xStfull(String name, String path) {
  var widgetname = name[0].toUpperCase() + name.substring(1);
  var contents = """
import 'package:firexcode/firexcode.dart';

class $widgetname extends StatefulWidget {
  @override
  _$widgetname\State createState() => _$widgetname\State();
}

class _$widgetname\State extends State<$widgetname> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}""";

  fileCreate(path, contents, widgetname + '.dart');
}
