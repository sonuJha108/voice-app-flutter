import 'package:flutter/material.dart';
import 'package:voice_app/colors/pallete.dart';

class FeatureBox extends StatelessWidget {
  // init the color in the feature box
  final Color color;

  // write the defualt const. and make sure the current instence are enter
  final String headerText;

  // description text
  final String descriptionText;

  const FeatureBox({
    super.key,
    required this.color,
    required this.headerText,
    required this.descriptionText,
  });

  @override
  Widget build(BuildContext context) {

    // create the container widget and write the style code
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 10,
      ),

      // decoration property  write here
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),

      // create the child and the widget with padding 
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0).copyWith(left: 15),

        // column widget code
        child: Column(

          // column  withe there children 
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                // init the final header text
                headerText,

                // style the text 
                style: const TextStyle(
                  fontFamily: 'Cera Pro',
                  color: Pallete.blackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // for the spacing in this widget
            SizedBox(
              height: 3,
            ),

            // enternal text with the padding widget and style 
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                descriptionText,
                style: const TextStyle(
                  fontFamily: 'Cera Pro',
                  color: Pallete.blackColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
