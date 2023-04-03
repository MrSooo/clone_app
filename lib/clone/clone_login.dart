import 'package:core_app/clone/extendable/b_clone.dart';
import 'package:flutter/material.dart';

import '../core/core_login.dart';

class CloneLogin extends CoreLogin {
  const CloneLogin({super.key});

  @override
  State<CloneLogin> createState() => _CloneLoginState();
}

class _CloneLoginState extends State<CloneLogin> {
  final BClone bClone = BClone();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(bClone.value()),
    );
  }
}
