import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/material.dart';


class GenerateCode extends StatefulWidget {

   String dummyData;

  GenerateCode({required this.dummyData});

  @override
  _GenerateCodeState createState() => _GenerateCodeState();
}

class _GenerateCodeState extends State<GenerateCode> {

  String temp = " ";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     temp = widget.dummyData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return  ListView(
          
          children: [
            (temp == null)
                ? Center(child: Text("Please enter your phone number in order to generate QR code..."))
                : Center(
                  child: QrImage(
                    size: constraints.maxWidth * 0.80,
                      version: QrVersions.auto,
                      data: temp,
                      gapless: true,
                    ),
                ),
          ],
        );
        }
        return Container( );
      }
      ),
    ), );
  }
}
  
