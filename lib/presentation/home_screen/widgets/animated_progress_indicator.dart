import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  final Duration duration;
  const AnimatedCircularProgressIndicator({
    super.key,
    required this.percentage,
    required this.label,
    required this.duration,
  });

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
          width: 80,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: duration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: Colors.blue.withOpacity(0.9),
                  backgroundColor: Colors.white,
                  strokeWidth: 10,
                ),
                Center(
                  child: Text(
                    "${(value * 100).toInt()}%",
                    style: const TextStyle(color: Colors.blue, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10 / 3),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ],
    );
  }
}
