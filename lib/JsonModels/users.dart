import 'package:mobx/mobx.dart';

part 'users.g.dart';

class Users = _Users with _$Users;

abstract class _Users with Store {
  @observable
  int? usrId;
  @observable
  String usrName;
  @observable
  String usrPassword;

  _Users({
    this.usrId,
    required this.usrName,
    required this.usrPassword,
  });

  factory _Users.fromMap(Map<String, dynamic> json) => Users(
    usrId: json["usrId"],
    usrName: json["usrName"],
    usrPassword: json["usrPassword"],
  );

  Map<String, dynamic> toMap() => {
    "usrId": usrId,
    "usrName": usrName,
    "usrPassword": usrPassword,
  };
}
