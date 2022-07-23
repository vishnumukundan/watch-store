import 'package:flutter/material.dart';

import '../../../theme/config/colors.dart';

TextField textField__widget() {
  return TextField(
    cursorColor: kColorSecondary,
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: 'Search Product',
      hintStyle: TextStyle(
        color: kColorSecondary.withOpacity(0.55),
        fontFamily: 'Raleway',
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
    ),
  );
}
