import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  String btnText;
  final VoidCallback onPressed;
  Color? btnBgColor;
  Color? txtColor;
  double? borderRadius;
  EdgeInsets? borderInsets;
  Color? borderColor;
  FontWeight? fontWeight;
  double? borderWidth;

  CustomButtom({
    required this.btnText,
    required this.onPressed,
    this.btnBgColor,
    this.txtColor,
    this.borderRadius,
    this.borderInsets,
    this.borderColor,
    this.borderWidth,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: borderInsets ?? const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: btnBgColor ?? Colors.black,
            border: Border.all(
              color: borderColor ?? Colors.black,
              width: borderWidth ?? 1,
            ),
            borderRadius:
                BorderRadius.all(Radius.circular(borderRadius ?? 10))),
        child: Text(
          btnText,
          style: TextStyle(
              color: txtColor ?? Colors.white,
              fontWeight: fontWeight ?? FontWeight.normal),
        ),
      ),
    );
  }
}
