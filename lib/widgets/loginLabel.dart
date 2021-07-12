import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginLabel extends StatefulWidget {
  final Icon labelIcon;
  final TextInputType TIT;
  final bool hiddenText;
  final Color LY;

  const LoginLabel(this.labelIcon, this.TIT, this.hiddenText, this.LY);

  @override
  _LoginLabelState createState() =>
      _LoginLabelState(labelIcon, TIT, hiddenText, LY);
}

class _LoginLabelState extends State<LoginLabel> {
  final Icon labelIcon;
  final TextInputType TIT;
  final bool hiddenText;
  final Color LY;

  _LoginLabelState(this.labelIcon, this.TIT, this.hiddenText, this.LY);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextField(
        obscureText: hiddenText,
        keyboardType: TIT,
        decoration: InputDecoration(
          prefixIcon: labelIcon,
          filled: true,
          fillColor: LY,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            borderSide: BorderSide(color: Colors.white, width: 1),
          ),
        ),
      ),
    );
  }
}
