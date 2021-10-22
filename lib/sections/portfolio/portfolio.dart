import 'package:flutter/material.dart';
import 'package:my_profile/sections/portfolio/portfolioDesktop.dart';
import 'package:my_profile/sections/portfolio/portfolioMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Portmy_profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Portmy_profileMobileTab(),
      tablet: Portmy_profileMobileTab(),
      desktop: Portmy_profileDesktop(),
    );
  }
}
