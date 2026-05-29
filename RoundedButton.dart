import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
 final String btnName;
 final Icon? icon;
 final Color? bgColor;
 final TextStyle? textStyle;
 final VoidCallback? callBack;

 const RoundedButton({
  Key? key,
  required this.btnName,
  this.icon,
  this.bgColor = Colors.blue,
  this.textStyle,
  this.callBack,
 }) : super(key: key);

 @override
 Widget build(BuildContext context) {
  return ElevatedButton(
   style: ElevatedButton.styleFrom(backgroundColor: bgColor),
   onPressed: callBack,
   child: icon != null
       ? Row(
    mainAxisSize: MainAxisSize.min,
    children: [
     icon!,
     const SizedBox(width: 8),
     Text(btnName, style: textStyle),
    ],
   )
       : Text(btnName, style: textStyle),
  );
 }
}
