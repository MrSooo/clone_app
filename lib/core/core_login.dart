import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CoreLogin extends StatefulWidget {
  const CoreLogin({super.key});

  @override
  State<CoreLogin> createState() => _CoreLoginState();
}

class _CoreLoginState extends State<CoreLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Core Login")),
      body: const Center(
        child: Text(
          "Core",
        ),
      ),
    );
  }
}
