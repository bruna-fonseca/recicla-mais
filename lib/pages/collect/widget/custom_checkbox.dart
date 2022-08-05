import 'package:flutter/material.dart';
import 'package:recicla_mais/config/custom_colors.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains) || isChecked) {
        return CustomColors.customContrastColor;
      }
      return Colors.grey;
    }

    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        height: 40,
        child: InkWell(
          onTap: () => setState(() => isChecked = !isChecked),
          child: Row(
            children: [
              Checkbox(
                checkColor: Colors.white,
                fillColor: MaterialStateProperty.resolveWith(getColor),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              Text(
                widget.label,
                style: TextStyle(
                  fontSize: 20,
                  color: CustomColors.customSwatchColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
