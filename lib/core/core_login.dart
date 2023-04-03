import 'package:core_app/core/extendable/b_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CoreLogin extends StatefulWidget {
  const CoreLogin({super.key});

  @override
  State<CoreLogin> createState() => _CoreLoginState();
}

class _CoreLoginState extends State<CoreLogin> {
  final BCore bCore = BCore();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        bCore.value(),
        //ABBYCZZZZZ
      ),
    );
  }
}
