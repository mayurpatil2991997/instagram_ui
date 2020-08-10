import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  final String errorText;

  ErrorScreen({
    Key key,
    this.errorText = 'No route found',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text(errorText),
      ),
    );
  }
}
