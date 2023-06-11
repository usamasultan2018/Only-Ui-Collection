import 'package:flutter/material.dart';
class Responsive extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;
  Responsive({
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth<700){
            return mobileScaffold;
          }
          else if(constraints.maxWidth<800){
            return tabletScaffold;
          }
          else {
            return desktopScaffold;
          }
        }
        );
  }
}
