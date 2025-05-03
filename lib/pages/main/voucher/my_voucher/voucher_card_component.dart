import 'package:flutter/material.dart';

class VoucherCardComponent extends StatelessWidget {
  const VoucherCardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: ClipPath(
        clipper: TicketClipper(),
        child: Container(
          height: 180,
          decoration: BoxDecoration(
            color: Colors.white, // Background color for the clipped area
            border: Border.all(color: Colors.grey.shade300, width: 2), // Add border
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Voucher Unduh Aplikasi",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Untuk kamu yang pertama kali...",
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(height: 16),
                      Text("Berakhir dalam", style: TextStyle(fontSize: 12)),
                      Text(
                        "12-11-2025",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              CustomPaint(
                size: Size(1, 180), // Width and height of the dashed line
                painter: DashedLinePainter(),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Voucher Code", style: TextStyle(fontSize: 12)),
                    const SizedBox(height: 8),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.shade100,
                      ),
                      child: const Text(
                        "CQW4C1",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.brown,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Syarat dan ketentuan berlaku*",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Custom painter for the dashed vertical line
class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const double dashHeight = 5; // Height of each dash
    const double dashSpace = 3; // Space between dashes
    final paint =
        Paint()
          ..color =
              Colors
                  .grey // Color of the dashed line
          ..strokeWidth = 1; // Thickness of the dashed line

    double startY = 0;
    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashHeight), paint);
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

/// Custom clipper for the ticket shape
class TicketClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    const double radius = 20;
    final path = Path();

    // Start from top-left
    path.moveTo(0, 0);
    // Left side top to center minus notch
    path.lineTo(0, size.height / 2 - radius);
    // Left notch
    path.arcToPoint(
      Offset(0, size.height / 2 + radius),
      radius: const Radius.circular(radius),
      clockwise: false,
    );
    // Left side center + notch to bottom
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);

    // Right side bottom to center + notch
    path.lineTo(size.width, size.height / 2 + radius);
    // Right notch
    path.arcToPoint(
      Offset(size.width, size.height / 2 - radius),
      radius: const Radius.circular(radius),
      clockwise: false,
    );
    // Right side center - notch to top
    path.lineTo(size.width, 0);

    // Close the path
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}