import 'package:admin_v2/features/products/widgets/scanner_overlay.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerDialog extends StatelessWidget {
  const ScannerDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        height: 300,
        width: 300,
        child: Stack(
          children: [
            MobileScanner(
              controller: MobileScannerController(
                facing: CameraFacing.back,
                detectionSpeed: DetectionSpeed.normal,
              ),
              onDetect: (capture) {
                final barCode = capture.barcodes.firstOrNull;
                final code = barCode?.rawValue;

                if (code != null && code.isNotEmpty) {
                  Navigator.of(context).pop(code);
                }
              },
            ),
            Positioned.fill(child: ScannerOverlay()),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('cancel', style: TextStyle(fontSize: 18)),
        ),
      ],
    );
  }
}
