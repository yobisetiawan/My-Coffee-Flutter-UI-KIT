import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:myapp/components/btn_component.dart';
import 'package:myapp/pages/scan_qr/controller.dart';

class ScanQRPage extends StatelessWidget {
  const ScanQRPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MobileScannerController cameraController = MobileScannerController();
    final ctr = Get.put(ScanQRController());

    return Scaffold(
      backgroundColor: Colors.black,
      
      body: SafeArea(
        child: Obx(() {
          if (ctr.result.value != "") {
            return Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Result : ${ctr.result.value}',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  BtnComponent(
                    text: 'Scan Lagi',
                    onPressed: () {
                      ctr.setActiveMenu("");
                    },
                  ),
                ],
              ),
            );
          }
          return Stack(
            children: [
              MobileScanner(
                controller: cameraController,
                onDetect: (barcode) {
                  ctr.setActiveMenu(barcode.barcodes.first.rawValue.toString());
                },
              ),
              const QRScannerOverlay(),
              Positioned(
                top: 30,
                left: 0,
                right: 0,
                child: Container(
                  height: 50,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(Icons.arrow_back, color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: () {
                          cameraController.toggleTorch();
                        },
                        child: Icon(Icons.flash_on, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

class QRScannerOverlay extends StatelessWidget {
  const QRScannerOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg/bg2.png'),
          repeat: ImageRepeat.noRepeat,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
