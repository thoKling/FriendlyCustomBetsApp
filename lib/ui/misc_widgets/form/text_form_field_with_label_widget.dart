import 'package:flutter/material.dart';

class TextFormFieldWithLabelWidget extends StatelessWidget {
  const TextFormFieldWithLabelWidget({
    Key? key,
    required this.label,
    required this.controller,
  }) : super(key: key);

  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label),
        Expanded(
          child: TextFormField(
            controller: controller,
          ),
        ),
      ],
    );
  }
}
