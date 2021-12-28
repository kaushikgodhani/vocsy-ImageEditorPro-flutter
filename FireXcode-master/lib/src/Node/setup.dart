import 'dart:io';

import 'package:console_cmd/console_cmd.dart';
import 'package:process_run/shell.dart';

var shell = Shell();

class NodeSetup {
  Future<void> expressStarts({String path, String projectName}) async {
    ANSIPrinter().printRGB(
        '-------------------------------------------------------------------------------------------',
        breakLine: true,
        bGray: 1.0,
        fColor: 0xff4BB543);
    print('Express creating.....');
    File('$path\\node_start.sh')
        .writeAsStringSync('#!/bin/bash\ncd $path\nnpm init');

    await Process.run('$path\\node_start.sh', [], runInShell: true);
    ANSIPrinter().printRGB('Created package.json',
        breakLine: true, bGray: 1.0, fColor: 0xff4BB543);

    ANSIPrinter().printRGB(
        '-------------------------------------------------------------------------------------------',
        breakLine: true,
        bGray: 1.0,
        fColor: 0xff4BB543);

    ANSIPrinter().printRGB('Now call expressInstallDependencies("path") ',
        breakLine: true, bGray: 1.0, fColor: 0xff4BB543);
    ANSIPrinter().printRGB(
        '-------------------------------------------------------------------------------------------',
        breakLine: true,
        bGray: 1.0,
        fColor: 0xff4BB543);

    // await shell.pushd(path).runExecutableArguments('npm', [
    //   'init'
    // ]);
//\nnpm install express nodemon \nnpm install bcrypt \nnpm install dotenv \nnpm install jsonwebtoken \nnpm install mongoose \nnpm install node-input-validator
    //  shell = shell.popd();
  }

  Future<void> expressInstallDependencies({String path}) async {
    await shell.cd(path).run('npm i express nodemon');
    ANSIPrinter().printRGB('Express nodemon Installed',
        breakLine: true, bGray: 1.0, fColor: 0xff4BB543);
    await shell.cd(path).run('npm i bcrypt');
    ANSIPrinter().printRGB('Bcrypt Installed',
        breakLine: true, bGray: 1.0, fColor: 0xff4BB543);
    await shell.cd(path).run('npm i dotenv');
    ANSIPrinter().printRGB('Dotenv Installed',
        breakLine: true, bGray: 1.0, fColor: 0xff4BB543);
    await shell.cd(path).run('npm i jsonwebtoken');
    ANSIPrinter().printRGB('JsonWebToken Installed',
        breakLine: true, bGray: 1.0, fColor: 0xff4BB543);
    await shell.cd(path).run('npm i mongoose');
    ANSIPrinter().printRGB('Mongoose Installed',
        breakLine: true, bGray: 1.0, fColor: 0xff4BB543);
    await shell.cd(path).run('npm install node-input-validator');
    ANSIPrinter().printRGB('Node-input-validator Installed',
        breakLine: true, bGray: 1.0, fColor: 0xff4BB543);

    ANSIPrinter().printRGB(
        '-------------------------------------------------------------------------------------------',
        breakLine: true,
        bGray: 1.0,
        fColor: 0xff4BB543);
    ANSIPrinter().printRGB('Successfully Installed Everything :)',
        breakLine: true, bGray: 1.0, fColor: 0xff4BB543);
    ANSIPrinter().printRGB(
        '-------------------------------------------------------------------------------------------',
        breakLine: true,
        bGray: 1.0,
        fColor: 0xff4BB543);
  }
}
