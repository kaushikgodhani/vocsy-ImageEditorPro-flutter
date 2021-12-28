// class LaravelTableController {
//   final String tableName;
//   final String functionCreate;
//   LaravelTableController({this.tableName, this.functionCreate});

//   String create({List<String> importModel}) {
//     var model = '';
//     importModel.forEach((element) {
//       model = model + 'use App\\' + element + ';\n';
//     });
//     var text = '''<?php

// namespace App\\Http\\Controllers\\Api;
// $model
// use App\\Http\\Controllers\\Controller;
// use App\\User;
// use Illuminate\\Support\\Facades\\Validator;
// use Illuminate\\Http\\Request;

// class ${tableName[0].toUpperCase()}${tableName.substring(1)}Controller extends Controller
// {
//    $functionCreate
// }
// ''';
//     return text;
//   }
// }

class LaravelTableController extends ControllerFunction<String> {
  LaravelTableController(
      {String tableName, String functionCreate, List<String> importModel})
      : super(tableName, functionCreate, importModel);
  var model = '';

  String get code {
    importModel.forEach((element) {
      model = model +
          'use App\\' +
          element.replaceAll('_', '')[0].toUpperCase() +
          element.substring(1).replaceAll('_', '') +
          ';\n';
    });
    return '''<?php

namespace App\\Http\\Controllers\\Api;
$model
use App\\Http\\Controllers\\Controller;
use App\\User;
use Illuminate\\Support\\Facades\\Auth;
use Illuminate\\Support\\Facades\\Validator;
use Illuminate\\Http\\Request;

class ${tableName.replaceAll('_', '')[0].toUpperCase()}${tableName.substring(1).replaceAll('_', '')}Controller extends Controller
{
   $functionCreate
}
''';
  }
}

class ControllerFunction<T> {
  final T tableName;
  final T functionCreate;
  final List<String> importModel;
  ControllerFunction(this.tableName, this.functionCreate, this.importModel);
}
