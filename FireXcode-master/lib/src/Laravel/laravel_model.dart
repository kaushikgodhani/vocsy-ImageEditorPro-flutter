import '../../laravel.dart';

List<String> makeModel({List<String> list}) {
  var model = <String>[];
  list.forEach((element) {
    var data = xBetweenText(element, "'", "'");
    model.add("'$data'");
  });
  return model;
}

class ModelParam<T> {
  final T tableName;
  final List<String> fillable;
  final List<String> hidden;
  ModelParam(this.tableName, this.fillable, this.hidden);
}

class LaravelModel extends ModelParam<String> {
  LaravelModel(String tableName, List<String> fillable, List<String> hidden)
      : super(tableName, makeModel(list: fillable), makeModel(list: hidden));
  String get code => """<?php

namespace App;

use Illuminate\\Database\\Eloquent\\Model;

class ${tableName[0].replaceAll('_', '').toUpperCase()}${tableName.substring(1).replaceAll('_', '')} extends Model
{
    //
    protected \$table = '${tableName.toLowerCase()}';
    protected \$fillable = $fillable;
    protected \$hidden = $hidden;
}
""";
}
