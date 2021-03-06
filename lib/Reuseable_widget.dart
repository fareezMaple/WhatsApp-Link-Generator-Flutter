import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeuButton extends StatelessWidget {
  const NeuButton({Key key, this.label, this.onPressedButton})
      : super(key: key);

  final String label;
  final Function onPressedButton;

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
        margin: EdgeInsets.all(16.0),
        padding: const EdgeInsets.all(16.0),
        style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
        ),
        child: Text(label, textAlign: TextAlign.center),
        onPressed: () {
          print('Called $label');
          onPressedButton();
        });
  }
}
