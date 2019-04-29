import 'package:flutter/material.dart';

double getScreenWidthPercentage(double percentage, BuildContext context) {
  return MediaQuery.of(context).size.width * percentage / 100;
}


double getScreenHeightPercentage(double percentage, BuildContext context) {
  return MediaQuery.of(context).size.height * percentage / 100;
}

    