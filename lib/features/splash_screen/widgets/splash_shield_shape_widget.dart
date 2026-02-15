import 'package:flutter/material.dart';
import 'package:vaultkeep/core/constants/app_size.dart';
import 'package:vaultkeep/core/theme/app_colors.dart';

/// A widget that draws the specific "Shield" shape from your SVG.
///
/// Original SVG ViewBox: 0 0 43 54
/// This widget scales that path to fit whatever size you give it.
class SplashShieldShapeWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  const SplashShieldShapeWidget({
    super.key,
    this.width = AppSizes.splashShieldWidth,
    this.height =
        AppSizes.splashShieldHeight, // roughly maintains the 43:54 aspect ratio
    this.color = AppColors.white,
  });
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: ShieldPainter(color: color),
    );
  }
}

class ShieldPainter extends CustomPainter {
  final Color color;
  ShieldPainter({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    // 1. Define the Paint
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill; // SVG says fill="white"
    // 2. Define the exact path from SVG
    // Original dimensions: 43 x 54
    var path = Path();
    // M 21.3333 53.3333
    path.moveTo(21.3333, 53.3333);
    // C 15.1556 51.7778 10.0556 48.2333 6.03333 42.7
    path.cubicTo(15.1556, 51.7778, 10.0556, 48.2333, 6.03333, 42.7);
    // C 2.01111 37.1667 0 31.0222 0 24.2667
    path.cubicTo(2.01111, 37.1667, 0, 31.0222, 0, 24.2667);
    // V 8 -> Line to (currentX, 8) -> currentX is 0
    path.lineTo(0, 8);
    // L 21.3333 0
    path.lineTo(21.3333, 0);
    // L 42.6667 8
    path.lineTo(42.6667, 8);
    // V 24.2667 -> Line to (currentX, 24.2667) -> currentX is 42.6667
    path.lineTo(42.6667, 24.2667);
    // C 42.6667 31.0222 40.6556 37.1667 36.6333 42.7
    path.cubicTo(42.6667, 31.0222, 40.6556, 37.1667, 36.6333, 42.7);
    // C 32.6111 48.2333 27.5111 51.7778 21.3333 53.3333
    path.cubicTo(32.6111, 48.2333, 27.5111, 51.7778, 21.3333, 53.3333);
    // Z -> Close
    path.close();

    // 3. Transformation (Apply Scaling via Canvas)
    // The path is defined in a 43x54 box.
    // Instead of creating a NEW path object (expensive), we scale the canvas (cheap).
    final double scaleX = size.width / 43.0;
    final double scaleY = size.height / 54.0;
    canvas.save(); // Save current canvas state
    canvas.scale(scaleX, scaleY); // Scale the coordinate system
    // 4. Draw
    canvas.drawPath(path, paint);
    canvas.restore(); // Restore canvas state so other drawings aren't affected
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
