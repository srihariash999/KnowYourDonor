import 'package:flutter/material.dart';
import 'package:knowyourdonor/constants/text_styles.dart';
import 'package:knowyourdonor/constants/colors.dart';

// TextBox for Emails, Password, Phone Number
// ignore: non_constant_identifier_names
Widget TextBox(
    {@required BuildContext context,
    @required String hintText,
    @required TextEditingController inputController,
    @required Function validator,
    @required bool isPassword,
    Icon fieldIcon}) {
  return TextFormField(
    obscureText: isPassword,
    validator: validator,
    controller: inputController,
    style: mediumTextStyle(),
    decoration: InputDecoration(
      prefixIcon: fieldIcon,
      hintStyle: mediumTextStyle(),
      hintText: hintText,
      border: OutlineInputBorder(
        borderSide: BorderSide(
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: errorTextColor),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: textFieldBorderColor,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: normalTextColor,
          width: 2,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
    ),
  );
}