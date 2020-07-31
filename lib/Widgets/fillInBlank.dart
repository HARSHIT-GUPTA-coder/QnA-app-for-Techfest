import 'package:flutter/material.dart';

class FillInBlank extends StatelessWidget {
  final handler;
  final _controller = TextEditingController();
  FillInBlank(this.handler, var ans) {
    if (ans is String)
      this._controller.text = ans;
    else
      this._controller.text = '';
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: 'Type your Answer here',
          ),
          onChanged: (String value) {
            handler(this._controller.text);
          }),
    );
  }
}
