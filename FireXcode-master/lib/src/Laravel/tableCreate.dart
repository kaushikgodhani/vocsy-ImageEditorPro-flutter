import './database_structure.dart';
import './ListLaravel.dart';

class LaravelTableCreate extends LaravelTableParam<String> {
  LaravelTableCreate(String tableName, List<String> tableColumn)
      : super(tableName, tableColumn);
  String get code {
    var tableList = tableColumn.dblist();
    var table = dbStructure(tableName, tableList);
    return table;
  }
}

class LaravelTableParam<T> {
  final T tableName;
  final List<T> tableColumn;

  LaravelTableParam(this.tableName, this.tableColumn);
}
