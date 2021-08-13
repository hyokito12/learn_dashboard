import 'package:flutter/material.dart';
import 'package:learn_dashboard/constants/style.dart';
import 'package:learn_dashboard/helpers/responsiveness.dart';
import 'package:learn_dashboard/widgets/custom_text.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: _width / 48),
                Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Image.asset("/icons/logo.png"),
                ),
                Flexible(
                  child: CustomText(
                    text: "Dashboard",
                    size: 20,
                    weight: FontWeight.bold,
                    color: active,
                  ),
                ),
                SizedBox(
                  width: _width / 48,
                )
              ],
            )
        ],
      ),
    );
  }
}
