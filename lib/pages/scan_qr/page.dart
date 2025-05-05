import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanQRPage extends StatelessWidget {
  const ScanQRPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MobileScanner(
            // allowDuplicates: false,
            onDetect: (barcode) {
              // ignore: avoid_print
              print(barcode);
            },
          ),
          const QRScannerOverlay(),
        ],
      ),
    );
  }
}

class QRScannerOverlay extends StatelessWidget {
  const QRScannerOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        final width = constraints.maxWidth * 0.8;
        final height = width;
        final top = (constraints.maxHeight - height) / 2;
        final left = (constraints.maxWidth - width) / 2;

        return Stack(
          children: [
            // Dark overlay with transparent scan area
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withValues(alpha: .6),
                BlendMode.srcOut,
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      backgroundBlendMode: BlendMode.dstOut,
                    ),
                  ),
                  Positioned(
                    left: left,
                    top: top,
                    child: Container(
                      width: width,
                      height: height,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Red corners
            Positioned(
              left: left,
              top: top,
              child: SizedBox(
                width: width,
                height: height,
                child: CustomPaint(painter: BorderPainter()),
              ),
            ),
          ],
        );
      },
    );
  }
}

class BorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.red
          ..strokeWidth = 4
          ..style = PaintingStyle.stroke;

    final radius = 20.0;
    final length = 30.0;

    Path path =
        Path()
          ..moveTo(0, radius)
          ..arcToPoint(Offset(radius, 0), radius: Radius.circular(radius))
          ..moveTo(0, length)
          ..lineTo(0, 0)
          ..lineTo(length, 0)
          ..moveTo(size.width - length, 0)
          ..lineTo(size.width, 0)
          ..lineTo(size.width, length)
          ..moveTo(size.width, size.height - length)
          ..lineTo(size.width, size.height)
          ..lineTo(size.width - length, size.height)
          ..moveTo(length, size.height)
          ..lineTo(0, size.height)
          ..lineTo(0, size.height - length);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
