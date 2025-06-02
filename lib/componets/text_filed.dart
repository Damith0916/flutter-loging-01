import 'package:flutter/material.dart';

class TextFiled extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String labletext;
  final bool obscureText;
  final Widget? prefixIcon;

  const TextFiled({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.labletext,
    this.prefixIcon,
  });

  @override
  State<TextFiled> createState() => _TextFiledState();
}

class _TextFiledState extends State<TextFiled> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: _obscureText,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        hintText: widget.hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.grey.shade600),
        ),
        labelText: widget.labletext,
        suffixIcon:
            widget.obscureText
                ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
                : null,
      ),
    );
  }
}
