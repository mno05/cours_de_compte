import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatefulWidget {
  final String text;
  final String hintText;
  final bool isPassword;
  const CustomTextField({
    super.key,
    required this.text,
    required this.hintText,
    this.isPassword = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool obscure;

  @override
  void initState() {
    obscure = widget.isPassword;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  widget.text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              border: Border.all(color: Colors.grey),
            ),
            child: TextFormField(
              obscureText: obscure,
              decoration: InputDecoration(
                  suffixIcon: widget.isPassword
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              obscure = !obscure;
                            });
                          },
                          icon: Icon(obscure
                              ? Icons.visibility_off
                              : Icons.remove_red_eye),
                        )
                      : Container(
                          height: 1,
                          width: 1,
                        ),
                  border: InputBorder.none,
                  hintText: widget.hintText,
                  hintStyle: TextStyle(
                    color: Colors.grey[400],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
