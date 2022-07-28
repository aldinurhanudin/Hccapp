import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

class PayslipDownload extends StatefulWidget {
  const PayslipDownload({Key? key}) : super(key: key);

  @override
  State<PayslipDownload> createState() => _PayslipDownloadState();
}

class _PayslipDownloadState extends State<PayslipDownload> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.orange.shade300,
        body: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 32),
              ElevatedButton(
                child: Text('Download & Open'),
                onPressed: () => openFile(
                  url:
                      'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
                  fileName: 'payslip.pdf',
                ),
              ),
            ],
          ),
        ),
      );

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
}




// import 'dart:io';

// import 'package:/flutter/material.dart';
// import 'package:ext_storage/ext_storage.dart';
// import 'package:get/get_connect/http/src/response/response.dart';




// class PayslipDownload extends StatefulWidget {
//   const PayslipDownload({Key? key}) : super(key: key);

//   @override
//   State<PayslipDownload> createState() => _PayslipDownloadState();
// }

// class _PayslipDownloadState extends State<PayslipDownload> {
//   final imgUrl="";

//   var dio;

// //get mobilw dwnload path
//   String path =
//       await ExtStorage.getExternalStoragePublicDirectory(
//   ExtStorage.DIRECTORY_DOWNLOADS);

//   String fullPath = "$path/newtask1.pdf";

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }

//   @override
//   void initState() {
//     getPermission();
//   }

//   void getPermission() async {
//     print("getPermision");
//     await PermissionHandler().requestPermissions([PermissionGroup.storage]);
//   }
//   Future download2(Dio dio, String url, String savePath) async {
//     //get pdf from link
//     Response response = await dio.get(
//       url,
//       onReceiveProgress: showDownloadProgress,
//       //Received data with List<int>
//       options: Options(
//           responseType: ResponseType.bytes,
//           followRedirects: false,
//           validateStatus: (status) {
//             return status < 500;
//           }),
//     );

//     //write in download folder
//     File file = File(savePath);
//     var raf = file.openSync(mode: FileMode.write);
//     raf.writeFromSync(response.data);
//     await raf.close();
//   }
// }