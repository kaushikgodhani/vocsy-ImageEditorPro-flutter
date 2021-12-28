import 'package:firexcode/src/Laravel/extension.dart';

extension LaravelFunction on List {
  String toFuntions(String functionName, {final bool request = false}) {
    var val = '';
    forEach((element) {
      val = val + element;
    });
    var requests = request ? 'Request \$request' : '';
    var text = ''' public function $functionName($requests){\n $val}''';
    return text;
  }

  String toFuntionsAuth(String functionName, {final bool request = false}) {
    var val = '';
    forEach((element) {
      val = val + element;
    });
    var requests = request ? 'Request \$request' : '';
    var text =
        ''' public function $functionName($requests){\n if(Auth::check()){
       \$user = Auth::user();
      $val
    }else{
            return response()->json(['response_code' => 401, 'error' => 'Unauthorised'], 401);

    }}''';
    return text;
  }
}

// extension LaravelValidation on List {
//   String toValidator({String request}) {
//     var text = '''Validator::make($request, $this)''';
//     return text;
//   }
// }

extension LaravelString on String {
  String validateAuth({List<String> messageerror}) {
    var text = """
       if (Auth::check()) {

            \$user = Auth::user();
        $this
        } else {
            return response()->json(['response_code' => 401, 'error' => 'Unauthorised', ${messageerror.toList()}], 401);
        }
      """;
    return text;
  }

  String toRequired() {
    return "'$this' => 'required'";
  }

  String toVariable() {
    return '\$$this';
  }

  String toStringReturn() {
    return "echo '$this';";
  }

  String toStrings() {
    return "'$this'";
  }

  String toIntegerReturn() {
    return 'echo $this;';
  }

  String toBoolReturn() {
    return 'echo ' + this + ';';
  }

  String toStoreVariable({variablename}) {
    var text = '\$$variablename = $this';
    return text;
  }

  /// Default error code is 401
  /// Default variable name is $validator
  String toValidate({String customMessage}) {
    var text = """\$validator = $this;
    
     if (\$validator->fails()) {
            return response()->json(['response_code' => 401, 'error' => \$validator->errors(), $customMessage], 401);
        } """;
    return text;
  }
}

Request requestall() {
  return Request('\$request->all()');
}

// class Laravel {
//   String data = "";
//   Laravel(String engine) {
//     data = engine;
//   }
// }

class Condition {
  final dynamic trueValue;
  final dynamic falseValue;

  Condition({this.trueValue, this.falseValue});

  String check(condition1, operators, condition2) {
    var text = '''if($condition1 $operators $condition2){
      $trueValue
    }else{
      $falseValue
    }''';
    return text;
  }

  String oneCheck(condition1) {
    var text = '''if($condition1){
      $trueValue
    }else{
      $falseValue
    }''';
    return text;
  }
}
