import 'package:flutter/material.dart';
import'package:shopsy/utils/constants/colors.dart';





class Dshadowvertical{

  static final verticalproductShadow=BoxShadow(
    color: Dcolor.darkgrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0,2)
  );
}
class Dshadowhorizontal{

  static final horizontallproductShadow=BoxShadow(
      color: Dcolor.darkgrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: Offset(0,2)
  );
}