import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoopAppBar extends StatelessWidget {
  const LoopAppBar({
    Key key,
    this.size,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: double.infinity,
      color: Colors.transparent,
      child: ClipPath(
        clipper: WaveClipper(),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, stops: [
            0.0,
            0.5,
            1.0
          ], colors: [
            Colors.black87,
            Colors.grey,
            Colors.grey[300],
            // Color(0xFF7074EC),
            // Color(0xFF01C6FA),
            // Color(0xFF00DDDE),
          ])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Flutter Web Adventure",
                style: Theme.of(context).textTheme.copyWith(title: TextStyle(fontSize: 50)).title,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0.0, size.height - size.height * 0.2);
    //first magnet
    var firstControlPoint = Offset(size.width / 4, size.height - size.height * 0.45);
    var firstEndPoint = Offset(size.width / 2, size.height - size.height * 0.19);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    //Second magnet
    var secondControlPoint = Offset(size.width * 0.75, size.height + size.height * 0.1);
    var secondEndPoint = Offset(size.width, size.height - size.height * 0.2);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
