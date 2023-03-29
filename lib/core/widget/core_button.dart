import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CoreButton extends StatefulWidget {
  final VoidCallback func;
  const CoreButton({super.key, required this.func});

  @override
  State<CoreButton> createState() => _CoreButtonState();
}

class _CoreButtonState extends State<CoreButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: widget.func, child: const Text("OI"));
  }
}
