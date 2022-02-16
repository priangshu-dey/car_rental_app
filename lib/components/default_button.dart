import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';


class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key, required this.text, required this.press,
  }) : super(key: key);

  final String? text;
  final Function? press;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            color: Colors.white,
            fontSize: (20),
          ),
        ),
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          primary: Colors.white,
          backgroundColor:  Color(0xffF5591F),

        ),
      ),
    );
  }
}
