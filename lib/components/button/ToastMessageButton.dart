import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastMessageButton extends StatelessWidget {
  const ToastMessageButton({super.key});

  @override
  Widget build(BuildContext context) {
    successMessage(String message) {
      return Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }

    errorMessage(String message) {
      return Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }

    wariningMessage(String message) {
      return Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.yellow,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
    return Column(
      children: [
        SizedBox(height: 20),
        ElevatedButton.icon(
          onPressed: () {
            successMessage("This is Success Message");
          },
          icon: Icon(Icons.done),
          label: Text("Success Message"),
        ),
        SizedBox(height: 20),
        ElevatedButton.icon(
          onPressed: () {
            wariningMessage("This is Warning Message");
          },
          icon: Icon(Icons.info),
          label: Text("Warning Message"),
        ),
        SizedBox(height: 20),
        ElevatedButton.icon(
          onPressed: () {
            errorMessage("This is Error Message");
          },
          icon: Icon(Icons.error),
          label: Text("Error Message"),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
