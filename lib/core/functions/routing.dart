import 'package:flutter/material.dart';

void navigatorTo(context, view) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) {
        return view;
      },
    ),
  );
}

void navigatorToReplacement(context, view) {
  Navigator.of(context).pushReplacement(
    MaterialPageRoute(
      builder: (context) {
        return view;
      },
    ),
  );
}

void navigatorToAndRemoveUntil(context, view) {
  Navigator.of(context).pushAndRemoveUntil(
    MaterialPageRoute(
      builder: (context) {
        return view;
      },
    ),
    (route) => false,
  );
}
