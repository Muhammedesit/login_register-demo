// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Users on _Users, Store {
  late final _$usrIdAtom = Atom(name: '_Users.usrId', context: context);

  @override
  int? get usrId {
    _$usrIdAtom.reportRead();
    return super.usrId;
  }

  @override
  set usrId(int? value) {
    _$usrIdAtom.reportWrite(value, super.usrId, () {
      super.usrId = value;
    });
  }

  late final _$usrNameAtom = Atom(name: '_Users.usrName', context: context);

  @override
  String get usrName {
    _$usrNameAtom.reportRead();
    return super.usrName;
  }

  @override
  set usrName(String value) {
    _$usrNameAtom.reportWrite(value, super.usrName, () {
      super.usrName = value;
    });
  }

  late final _$usrPasswordAtom =
      Atom(name: '_Users.usrPassword', context: context);

  @override
  String get usrPassword {
    _$usrPasswordAtom.reportRead();
    return super.usrPassword;
  }

  @override
  set usrPassword(String value) {
    _$usrPasswordAtom.reportWrite(value, super.usrPassword, () {
      super.usrPassword = value;
    });
  }

  @override
  String toString() {
    return '''
usrId: ${usrId},
usrName: ${usrName},
usrPassword: ${usrPassword}
    ''';
  }
}
