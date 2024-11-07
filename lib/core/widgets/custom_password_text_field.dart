import 'package:diva_e_commerce_app/core/helpers/app_regex.dart';
import 'package:diva_e_commerce_app/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class CustomPasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final dynamic Function(String?)? validator;
  const CustomPasswordTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator,
  });

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: widget.controller,
      obscureText: isObscureText,
      validator: (value) {
        if (value == null ||
            value.isEmpty ||
            !AppRegex.isPasswordValid(value)) {
          return 'Please enter a valid password ';
        }
      },
      keyboardType: TextInputType.visiblePassword,
      hintText: widget.hintText,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            isObscureText = !isObscureText;
          });
        },
        icon: Icon(
          color: Colors.black,
          isObscureText ? Icons.visibility_off : Icons.visibility,
        ),
      ),
    );
  }
}
