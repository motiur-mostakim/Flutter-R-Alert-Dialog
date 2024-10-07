import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class AlertHelper {
  static void showDeleteAddressAlert({
    required BuildContext context,
    required String descriptionText,
    required String titleText,
    required String images,
  }) {
    Alert(
      image: Image.asset(
        images,
        height: 63,
        width: 62,
      ),
      context: context,
      title: titleText,
      closeIcon: Container(
        height: 10,
      ),
      style: const AlertStyle(
        titleStyle: TextStyle(
          fontSize: 16,
          color: Color(0xFF777777),
          fontWeight: FontWeight.bold,
        ),
        titleTextAlign: TextAlign.center,
        descStyle: TextStyle(
          fontSize: 12,
          color: Color(0xFF777777),
        ),
      ),
      desc: descriptionText,
      buttons: [
        DialogButton(
          onPressed: () => Navigator.pop(context),
          color: const Color(0xFFEAEEF4),
          child: const Text(
            "No",
            style: TextStyle(
              color: Color(0xFF2F5596),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        DialogButton(
          onPressed: () => Navigator.pop(context),
          color: const Color(0xFF2F5596),
          child: const Text(
            "Yes",
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    ).show();
  }
}
