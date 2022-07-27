import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Payslip extends StatefulWidget {
  const Payslip({Key? key}) : super(key: key);

  @override
  State<Payslip> createState() => _PayslipState();
}

class _PayslipState extends State<Payslip> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text("PDF VIEWER"),
          centerTitle: true,
        ),
        body: Container(
          child: SfPdfViewer.asset(
            'assets/slipgaji.pdf',
            key: _pdfViewerKey,
          ),
        ));
  }
}
