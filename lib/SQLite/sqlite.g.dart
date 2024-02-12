// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sqlite.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DatabaseHelper on _DatabaseHelper, Store {
  late final _$databaseAtom =
      Atom(name: '_DatabaseHelper.database');

  @override
  Database? get database {
    _$databaseAtom.reportRead();
    return super.database;
  }

  @override
  set database(Database? value) {
    _$databaseAtom.reportWrite(value, super.database, () {
      super.database = value;
    });
  }

  late final _$initDBAsyncAction =
      AsyncAction('_DatabaseHelper.initDB');

  @override
  Future<void> initDB() {
    return _$initDBAsyncAction.run(() => super.initDB());
  }

  late final _$loginAsyncAction =
      AsyncAction('_DatabaseHelper.login');

  @override
  Future<bool> login(Users user) {
    return _$loginAsyncAction.run(() => super.login(user));
  }

  late final _$signupAsyncAction =
      AsyncAction('_DatabaseHelper.signup');

  @override
  Future<int> signup(Users user) {
    return _$signupAsyncAction.run(() => super.signup(user));
  }

  @override
  String toString() {
    return '''
database: ${database}
    ''';
  }
}
