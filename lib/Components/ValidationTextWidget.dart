import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/Utilities/SizeConfig.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// ValidationTextWidget that represent style of each one of them and shows as list of condition that you want to the app user
class ValidationTextWidget extends StatelessWidget {
  final bool valid;
  final String successAssetName;
  final String failAssetName;
  final Color color;
  final String text;
  final int? value;

  ValidationTextWidget(
      {required this.valid,
      required this.color,
      required this.successAssetName,
      required this.failAssetName,
      required this.text,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: [
        new Container(
            // width: SizeConfig.width! * 0.03,
            // height: SizeConfig.width! * 0.03,
            child: valid
                ? SvgPicture.asset(
                    successAssetName.toString(),
                  )
                : SvgPicture.asset(
                    failAssetName.toString(),
                  )),
        Padding(
          padding: EdgeInsets.only(left: SizeConfig.width! * 0.03),
          child: new Text(
            text.replaceFirst("-", value.toString()),
            style:
                new TextStyle(fontSize: SizeConfig.width! * 0.04, color: color),
          ),
        )
      ],
    );
  }
}
