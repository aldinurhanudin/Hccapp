import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hccapp/shared/shared.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

class PayslipDownload1 extends StatelessWidget {
  const PayslipDownload1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            margin: const EdgeInsets.only(top: 10),
            child: ElevatedButton(
              onPressed: () => openFile(
                url:
                    'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
                fileName: 'payslip.pdf',
              ),

              // onPressed: () async {

              //   Get.to(() => Payslip());

              // },
              style: ElevatedButton.styleFrom(
                primary: mainColor,
                elevation: 0,
                padding:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Cari',
                style: whiteTextFontBig,
              ),
            )),
      ],
    );
  }
}

Future openFile({required String url, String? fileName}) async {
  final file = await downloadFile(url, fileName!);
  if (file == null) return;

  print('Path: ${file.path}');

  OpenFile.open(file.path);
}

Future downloadFile(String url, String name) async {
  final appStorage = await getApplicationDocumentsDirectory();
  final file = File('${appStorage.path}/$name');
  try {
    final response = await Dio().get(
      url,
      options: Options(
        responseType: ResponseType.bytes,
        followRedirects: false,
        receiveTimeout: 0,
      ),
    );

    final raf = file.openSync(mode: FileMode.write);
    raf.writeFromSync(response.data);
    await raf.close();

    return file;
  } catch (e) {
    return null;
  }
}
