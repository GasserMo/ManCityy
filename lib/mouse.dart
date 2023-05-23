import 'package:flutter/material.dart';

class OnHoverButton extends StatefulWidget {
  final Widget child;
  const OnHoverButton({
    Key? key ,
    required this.child}):super(key:key);
  @override
  State<OnHoverButton> createState() => _OnHoverButtonState();
}

class _OnHoverButtonState extends State<OnHoverButton> {
  bool isHovered = false;
  Offset offset = Offset(0, 0);

  @override
  Widget build(BuildContext context) {
    final hoveredtransform = Matrix4.identity()
      ..scale(1.1);
    final transform = isHovered ? hoveredtransform : Matrix4.identity();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MouseRegion(
        onHover: (e) => setState(() => offset = e.position),
        child: Scaffold(
          backgroundColor: Colors.cyan.shade50,
          body: Stack(
            children: [
              Center(
                child: const Text(
                  'Hello, world',
                  style: TextStyle(
                    fontSize: 90,
                  ),
                ),
              ),
              Transform.translate(
                offset: offset - Offset(10, 10),
                child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

