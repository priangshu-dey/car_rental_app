import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class CustomSurffixIcon extends StatelessWidget {
  const CustomSurffixIcon({
    Key? key, required this.svgIcon,
  }) : super(key: key);
  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding:  const EdgeInsets.fromLTRB(
          0,
          10,
          10,
          10

      ),
      child: SvgPicture.asset(svgIcon,
        height: 5,
      ),

    );
  }
}

