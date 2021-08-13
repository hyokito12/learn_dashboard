import 'package:flutter/material.dart';
import 'package:learn_dashboard/helpers/responsiveness.dart';
import 'package:learn_dashboard/widgets/horizontal_menu_item.dart';
import 'package:learn_dashboard/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;
  const SideMenuItem({Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isLargeScreen(context))
      return VerticalMenuItem(itemName: itemName, onTap: onTap);

    return HorizontalMenuItem(itemName: itemName, onTap: onTap);
  }
}
