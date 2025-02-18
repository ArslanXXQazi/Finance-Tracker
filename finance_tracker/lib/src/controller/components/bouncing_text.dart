import 'package:flutter/material.dart';

class BouncingText extends StatefulWidget {
  final String text;
  final double fontSize; // <-- Font size parameter

  BouncingText(this.text, {this.fontSize = 35}); // <-- Default font size

  @override
  _BouncingTextState createState() => _BouncingTextState();
}

class _BouncingTextState extends State<BouncingText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  int _currentIndex = 0; // Current letter index

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    _animation = Tween<double>(begin: 0, end: -20).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ))..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        setState(() {
          if (_currentIndex < widget.text.length - 1) {
            _currentIndex++;
          } else {
            _currentIndex = 0; // Restart animation from first letter
          }
          _controller.forward();
        });
      }
    });

    _controller.forward(); // Start animation
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.text.split('').asMap().entries.map((entry) {
        int index = entry.key;
        String letter = entry.value;
        return AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            double offset = index == _currentIndex ? _animation.value : 0;
            return Transform.translate(
              offset: Offset(0, offset),
              child: Text(
                letter,
                style: TextStyle(
                  fontSize: widget.fontSize, // <-- Dynamic font size
                  fontWeight: FontWeight.w900,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
