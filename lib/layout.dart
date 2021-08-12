import 'package:flutter/material.dart';
import 'package:learn_dashboard/helpers/responsiveness.dart';
import 'package:learn_dashboard/widgets/large_screen.dart';
import 'package:learn_dashboard/widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        mediumScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
