import 'package:flutter/material.dart';

class ResponsiveUi extends StatelessWidget {
  const ResponsiveUi({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          print(constraints.maxWidth);
          if (constraints.maxWidth < 700) {
            return Container(
              height: size.height,
              width: size.width,
              color: Colors.orange.shade200,
              child: Center(
                child: Text(
                  "This is a Phone View",
                  style: TextStyle(fontSize: 36),
                ),
              ),
            );
          } else if (constraints.maxWidth < 1000) {
            return Container(
              height: size.height,
              width: size.width,
              color: Colors.grey.shade200,
              child: Text(
                "This is a Tablet View",
                style: TextStyle(fontSize: 36),
              ),
            );
          } else {
            return Container(
              height: size.height,
              width: size.width,
              color: Colors.blue.shade200,
              child: Text(
                "This is a DeskTop View",
                style: TextStyle(fontSize: 36),
              ),
            );
          }
        },
      ),
    );
  }
}
