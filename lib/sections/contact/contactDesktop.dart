import 'package:flutter/material.dart';
import 'package:my_profile/animations/bottomAnimation.dart';
import 'package:my_profile/constants.dart';
import 'package:my_profile/widget/customTextHeading.dart';
import 'package:my_profile/widget/projectCard.dart';

class ContactDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          CustomSectionHeading(text: "\nGet in Touch"),
          CustomSectionSubHeading(
              text: "Let's build something together :)\n\n"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              kContactIcons.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: WidgetAnimator(
                  child: ProjectCard(
                    cardWidth: width < 1200 ? width * 0.25 : width * 0.2,
                    cardHeight: width < 1200 ? height * 0.28 : height * 0.25,
                    projectIconData: kContactIcons[index],
                    projectTitle: kContactTitles[index],
                    projectDescription: kContactDetails[index],
                  ),
                ),
              ),
            ),
          ),
          // const SizedBox(
          //   height: 25.0,
          // ),
          // OutlinedCustomBtn(
          //     btnText: "Let's Work Together",
          //     onPressed: () => Navigator.pushNamed(context, '/workTogether')),
        ],
      ),
    );
  }
}
