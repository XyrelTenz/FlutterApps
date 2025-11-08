import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "./provider/user_provider.dart";

class User extends ConsumerStatefulWidget {
  const User({super.key});

  @override
  ConsumerState<User> createState() => _UserState();
}

class _UserState extends ConsumerState<User> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final user = ref.watch(userProvider);

      ref.read(userProvider.notifier).state = user.copyWith(
        name: "Xyrel",
        email: "xdemcrito1@gmail.com",
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(ref.watch(userProvider).name.toString()),
          Text(ref.watch(userProvider).email.toString()),
        ],
      ),
    );
  }
}
