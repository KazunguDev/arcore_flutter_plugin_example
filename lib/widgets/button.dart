import 'package:arcore_flutter_plugin_example/constants/colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.size,
    required this.text,
    required this.press,
  }) : super(key: key);

  final Size size;
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: size.height * 0.40),
        child: SizedBox(
          width: size.width * 0.5,
          height: 50.0,
          child: MaterialButton(
            color: AppColors.primary,
            onPressed: press,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                  ),
                ),
                Card(
                  color: Colors.transparent,
                  // Color(0xCDA3C5EC),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0)),
                  child: SizedBox(
                    width: 35.0,
                    height: 35.0,
                    child: Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
