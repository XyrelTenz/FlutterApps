import "package:flutter_riverpod/legacy.dart";

import "../model/users.dart";

final userProvider = StateProvider<User>((ref) {
  return User();
});
