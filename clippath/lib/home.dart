import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ClipHome(),
      child: Container(
        height: 300,
        width: 300,
        color: Colors.blue,
        child: Center(
          child: Text("ClipPath"),
        ),
      ),
    );
  }
}

class ClipHome extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, size.height);
    
    var pointControl = Offset(size.width*2, size.height/2);
    var endPoint = Offset(0.0, 0.0);


    path.quadraticBezierTo(pointControl.dx, pointControl.dy, endPoint.dx, endPoint.dy);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
