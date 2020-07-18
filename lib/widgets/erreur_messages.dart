import 'package:flutter/material.dart';

import 'constants.dart';

Widget ErreurMessageForAllTheScreen(String erreurMessage) {
  return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      padding: EdgeInsets.all(30.0),
      child: Container(
          padding: EdgeInsets.only(right: 0.0),
          alignment: Alignment.centerRight,
          child: Text(erreurMessage,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
              style: ErreurMessageStyle)));
}
