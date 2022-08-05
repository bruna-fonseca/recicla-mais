import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recicla_mais/config/custom_colors.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    required this.title,
    this.inputFormatter,
    this.isObscure = false,
  }) : super(key: key);

  final String title;
  final List<TextInputFormatter>? inputFormatter;
  final bool isObscure;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isVisible = false;

  @override
  void initState() {
    super.initState();

    isVisible = widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        obscureText: isVisible,
        inputFormatters: widget.inputFormatter,
        decoration: InputDecoration(
          labelText: widget.title,
          isDense: true,
          suffixIcon: widget.isObscure
              ? IconButton(
                  icon:
                      Icon(isVisible ? Icons.visibility_off : Icons.visibility),
                  onPressed: () => setState(() => isVisible = !isVisible),
                )
              : null,
          labelStyle: TextStyle(
            color: CustomColors.customSwatchColor,
          ),
        ),
      ),
    );
  }
}
