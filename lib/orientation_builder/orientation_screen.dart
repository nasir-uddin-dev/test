import 'package:flutter/material.dart';

class OrientationScreen extends StatefulWidget {
  const OrientationScreen({super.key});

  @override
  State<OrientationScreen> createState() => _OrientationScreenState();
}

class _OrientationScreenState extends State<OrientationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return _portraitMode(size);
          } else {
            return _landscapeMode(size);
          }
        },
      ),
    );
  }

  _portraitMode(Size size) {
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.green.shade200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [FlutterLogo(), Text("This is a Portrait Mode")],
      ),
    );
  }

  _landscapeMode(Size size) {
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.blue.shade200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [FlutterLogo(), Text("This is a landScapeMode")],
      ),
    );
  }
}
