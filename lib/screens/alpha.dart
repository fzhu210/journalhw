import 'package:flutter/material.dart';
import 'beta.dart';
import 'donut.dart';
class Alpha extends StatelessWidget {

static const routeName = '/';

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
 Navigator.of(context).pushNamed('beta');
}
void pushDonut (BuildContext context) {
  Navigator.of(context).pushNamed('donut');
}