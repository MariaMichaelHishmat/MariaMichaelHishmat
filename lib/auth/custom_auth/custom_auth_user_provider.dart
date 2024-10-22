import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class MrAbdElrazekAuthUser {
  MrAbdElrazekAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UsersStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<MrAbdElrazekAuthUser> mrAbdElrazekAuthUserSubject =
    BehaviorSubject.seeded(MrAbdElrazekAuthUser(loggedIn: false));
Stream<MrAbdElrazekAuthUser> mrAbdElrazekAuthUserStream() =>
    mrAbdElrazekAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
