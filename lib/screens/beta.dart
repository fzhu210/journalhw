import 'package:flutter/material.dart';
import 'alpha.dart';
import 'donut.dart';
class Beta extends StatelessWidget {

  static const routeName = 'beta';

 @override
 Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            textPlaceholder(context),
            betaButton(context),
            donutButton (context)
          ],
         ) // Calumn
    ); // Center
}

void pushBeta (BuildContext context) {
 Navigator.of(context).pop();
}
void pushDonut (BuildContext context) {
  Navigator.of(context).pushNamed('Donut.routeName');
}