import 'package:flutter/material.dart';

class CustomTextInputFiled extends StatelessWidget {
  const CustomTextInputFiled(
      {super.key, required this.textEditingController, required this.hintText});
  final TextEditingController textEditingController;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      controller: textEditingController,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 22),
          hintText: hintText,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide(color: Colors.black, width: 0.5)),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.blue, width: 2),
          )),
    );
  }
}
