
import 'dart:async';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controls.dart';
// class AwesomeFlutterButton {
//   static const MethodChannel _channel =
//       const MethodChannel('awesome_flutter_button');
//
//   static Future<String?> get platformVersion async {
//     final String? version = await _channel.invokeMethod('getPlatformVersion');
//     return version;
//   }
// }


class AwesomeFlutterButton extends StatefulWidget {
  final Alignment alignment;
  final BoxFit fit;
  final bool pause;
  //final FlareCompletedCallback callback;
  final GestureTapCallback onpress;
  AwesomeFlutterButton({
    //required this.callback,
    required this.alignment,
    required this.fit,
    required this.onpress,
    required this.pause
    });

  @override
  _AwesomeFlutterButtonState createState() => _AwesomeFlutterButtonState();
}

class _AwesomeFlutterButtonState extends State<AwesomeFlutterButton> {
  FlareControls controls = FlareControls();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        setState(() {
          controls.play("Circular");
        });
        widget.onpress();
      },
      child: FlareActor("packages/assests/Teddy.flr",
      alignment: widget.alignment,
        fit: widget.fit,
        isPaused: widget.pause,
        //callback: widget.callback,
        animation: "idle",
      ),
    );

  }
}
