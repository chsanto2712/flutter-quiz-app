import 'package:flutter/material.dart';

class OptionsButton extends StatelessWidget {
  const OptionsButton(
      {super.key, required this.optionText, required this.optionSelect});

  final String optionText;
  final void Function() optionSelect;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: optionSelect,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        foregroundColor: Colors.black,
      ),
      child: Text(
        optionText,
      ),
    );
  }
}
