import 'package:flutter/material.dart';
import 'package:planit/utils/theme.dart';

class CustomInputField extends StatelessWidget {
  final String label;
  final String? hintText;
  final TextEditingController controller;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final IconButton? suffixIconButton;
  final bool? obstruct;
  final int? maxLines;
  final int? minLines;
  const CustomInputField({
    super.key,
    required this.label,
    required this.controller,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixIconButton,
    this.obstruct,
    this.maxLines = 1,
    this.minLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: const TextStyle(
          color: Colors.white, fontWeight: FontWeight.w300, fontSize: 14),
      obscureText: obstruct ?? false,
      obscuringCharacter: "*",
      maxLines: maxLines,
      minLines: minLines,
      decoration: InputDecoration(
        label: LabelLarge(text: label),
        hintText: hintText,
        floatingLabelStyle: const TextStyle(color: Colors.white),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Color.fromARGB(255, 97, 97, 97)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Color.fromARGB(255, 97, 97, 97)),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon ?? suffixIconButton,
      ),
    );
  }
}

class StandardInputField extends StatelessWidget {
  final String label;
  final String? hintText;
  final TextEditingController controller;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final IconButton? suffixIconButton;
  final bool? obstruct;
  final int? maxLines;
  final int? minLines;
  const StandardInputField({
    super.key,
    required this.label,
    required this.controller,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixIconButton,
    this.obstruct,
    this.maxLines = 1,
    this.minLines,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(alignment: Alignment.centerLeft, child: LabelLarge(text: label)),
        TextField(
          controller: controller,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w300, fontSize: 14),
          obscureText: obstruct ?? false,
          obscuringCharacter: "*",
          maxLines: maxLines,
          minLines: minLines,
          decoration: InputDecoration(
            hintText: hintText,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 97, 97, 97)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 97, 97, 97)),
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon ?? suffixIconButton,
          ),
        ),
      ],
    );
  }
}
