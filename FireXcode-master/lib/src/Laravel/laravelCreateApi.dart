import '../../laravel.dart';

class LaravelCreateRestApi {
  final String path;
  final String tableName;
  final LaravelTableCreate table;
  final LaravelModel model;
  final LaravelTableController controller;

  LaravelCreateRestApi(
      {this.path, this.tableName, this.table, this.model, this.controller});

  String create() {
    createFile(path + '/database/migrations', table.code,
        '2019_08_19_000000_' + tableName.toLowerCase() + '.php');
    createFile(
        path + '/app',
        model.code,
        '${tableName[0].toUpperCase()}${tableName.substring(1)}' '.php'
            .replaceAll('_', ''));
    createFile(
        path + '/app/Http/Controllers/API',
        controller.code,
        '${tableName[0].toUpperCase()}${tableName.substring(1)}'
                'Controller.php'
            .replaceAll('_', ''));
    return 'LaravelCreateRestApi done';
  }
}
