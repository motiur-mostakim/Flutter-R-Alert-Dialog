import 'package:flutter/material.dart';
import 'package:flutter_r_alert_dialog/utils/r_alert_dialog_function.dart';

class AlertDialogScreen extends StatelessWidget {
  const AlertDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AlertHelper.showDeleteAddressAlert(
                context: context,
                descriptionText:
                    "This product will be remove from \nyour cart list",
                titleText: "Delete from cart",
                images: "assets/images/alert_image.png");
          },
          style: ElevatedButton.styleFrom(
              minimumSize: const Size(132, 40),
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Color(0xFF2F5596), width: 1.5),
                borderRadius: BorderRadius.circular(8),
              ),
              backgroundColor: Colors.white),
          child: const Text(
            'Click Dialog',
            style: TextStyle(
                color: Color(0xFF2F5596),
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
