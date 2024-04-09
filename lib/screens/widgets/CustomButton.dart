import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const CustomButton({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          padding: const MaterialStatePropertyAll(
            EdgeInsets.only(left: 150, right: 150, top: 20, bottom: 20),
          ),
          elevation: const MaterialStatePropertyAll(0.0),
          backgroundColor: const MaterialStatePropertyAll(
            Color.fromARGB(255, 12, 36, 174),
          ),
          // backgroundColor: MaterialStatePropertyAll(defaultColor),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ))),
      child: Text(
        text,
        maxLines: 1,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
