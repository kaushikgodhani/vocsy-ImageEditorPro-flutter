import 'package:firexcode/laravel.dart';
import 'package:meta/meta.dart';

// -------------------------------------------------------------------------
extension LaravelValidation on LaraveRequiredValidation {
  ToValidator toValidator({@required Request request}) {
    var text = '''Validator::make(${request.code}, $code)''';

    return ToValidator(text);
  }
}

class ToValidatorParam<T> {
  final T text;

  ToValidatorParam(this.text);
}

class ToValidator extends ToValidatorParam<String> {
  ToValidator(String text) : super(text);
  String get code => text;
}

// -------------------------------------------------------------------------
extension LaravelToValidateName on ToValidator {
  ToValidate toValidate({String customMessage}) {
    return ToValidate(code, customMessage);
  }
}

class ToValidateParam<T> {
  final T text;
  final T customMessage;
  ToValidateParam(this.text, this.customMessage);
}

class ToValidate extends ToValidateParam<String> {
  ToValidate(String text, String customMessage) : super(text, customMessage);

  String get validate => """\$validator = ${text.toString()};
    
     if (\$validator->fails()) {
            return response()->json(['response_code' => 401, 'error' => \$validator->errors(), $customMessage], 401);
        } """;
}
// ------------------------------------------------------------------------------------

class Request extends RequestParams<String> {
  Request(String request) : super(request);
  String get code => request;
}

class RequestParams<T> {
  final T request;

  RequestParams(this.request);
}
