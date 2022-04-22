import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:flutter/material.dart';

class PdfView extends StatefulWidget {
  String url;
  PdfView(this.url);

  @override
  _PdfViewState createState() => _PdfViewState();
}

class _PdfViewState extends State<PdfView> {
  bool _isLoading = true;

  void _loadFile() async {
    // Load the pdf file from the internet
    //_pdf = await PDFDocument.fromURL(
    //  "https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2022/01/2022011867.pdf");
  }
  late PdfViewerController controller;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewer'),
      ),
      body: SfPdfViewer.network(
        widget.url,
      ),
    );
  }
}
