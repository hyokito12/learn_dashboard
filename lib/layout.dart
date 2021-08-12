import 'package:flutter/material.dart';
import 'package:learn_dashboard/helpers/responsiveness.dart';
import 'package:learn_dashboard/widgets/large_screen.dart';
import 'package:learn_dashboard/widgets/small_screen.dart';
import 'package:learn_dashboard/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        mediumScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
      drawer: Drawer(),
    );
  }
}
