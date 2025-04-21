import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_togas/Colors.dart';

class MyInputField extends StatelessWidget {
  MyInputField({
    this.controller,
    this.hintext,
    this.isEmail = true,
    this.isOTP = false,
    this.labelText,
    this.firstIcon,
  });
  TextEditingController? controller;
  String? labelText;
  String? hintext;
  bool isOTP;
  double otpw = 0.17;
  IconData? firstIcon;
  Widget secondIcon = Icon(Icons.remove_red_eye_outlined, color: iconClr);

  bool isEmail;
  Widget prefixEmailIcon = Icon(
    Icons.mail_outline,
    color: iconClr,
  );
  var prefixPasswordIcon = Icon(
    Icons.lock_outline,
    color: iconClr,
  );

  @override
  Widget build(BuildContext context) {
    double width =
        isOTP ? MediaQuery.sizeOf(context).width * otpw : double.infinity;

    return Container(
      width: width,
      child: TextField(
        controller: controller,
        textAlign: isOTP ? TextAlign.center : TextAlign.start,
        keyboardType: isOTP ? TextInputType.number : TextInputType.text,
        inputFormatters: isOTP
            ? [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(1)
              ]
            : [],
        decoration: InputDecoration(
            hintText: hintext,
            labelText: labelText,
            prefixIcon: firstIcon != null
                ? Icon(firstIcon, color: iconClr)
                : (isOTP
                    ? null
                    : isEmail
                        ? prefixEmailIcon
                        : prefixPasswordIcon),
            suffixIcon: isOTP
                ? null
                : isEmail
                    ? null
                    : secondIcon,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: textClr),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: myDarkgreen),
                borderRadius: BorderRadius.circular(12))),
      ),
    );
  }
}
