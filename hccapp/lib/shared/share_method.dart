part of 'shared.dart';

// Future<File> getMultimedia(BuildContext context,
//     {String type = "Photo"}) async {
//   final _picker = ImagePicker();
//   PickedFile pickedFile;
//
//   await showModalBottomSheet(
//     context: context,
//     builder: (BuildContext context) {
//       return SafeArea(
//         bottom: false,
//         child: SingleChildScrollView(
//           child: Container(
//             child: Wrap(
//               children: <Widget>[
//                 (type == "Photo")
//                     ? Container(
//                         child: Column(
//                           children: [
//                             ListTile(
//                               onTap: () async {
//                                 pickedFile = await _picker.getImage(
//                                     maxHeight: 1200,
//                                     maxWidth: 630,
//                                     imageQuality: 60,
//                                     source: ImageSource.camera);
//                                 Get.back();
//                               },
//                               title: Text('Camera'),
//                               leading: Icon(Icons.camera),
//                             ),
//                             ListTile(
//                               onTap: () async {
//                                 pickedFile = await _picker.getImage(
//                                     maxHeight: 1200,
//                                     maxWidth: 630,
//                                     imageQuality: 60,
//                                     source: ImageSource.gallery);
//                                 Get.back();
//                               },
//                               title: Text('Gallery'),
//                               leading: Icon(Icons.photo_album),
//                             ),
//                           ],
//                         ),
//                       )
//                     : Container(
//                         child: Column(
//                           children: [
//                             ListTile(
//                               onTap: () async {
//                                 pickedFile = await _picker.getVideo(
//                                   source: ImageSource.camera,
//                                 );
//                                 Get.back();
//                               },
//                               title: Text('Camera'),
//                               leading: Icon(Icons.camera),
//                             ),
//                             ListTile(
//                               onTap: () async {
//                                 pickedFile = await _picker.getVideo(
//                                   source: ImageSource.gallery,
//                                 );
//                                 Get.back();
//                               },
//                               title: Text('Gallery'),
//                               leading: Icon(Icons.video_collection),
//                             ),
//                           ],
//                         ),
//                       ),
//               ],
//             ),
//           ),
//         ),
//       );
//     },
//   );
//
//   if (pickedFile != null) {
//     return File(pickedFile.path);
//   } else {
//     print('No image selected');
//     return null;
//   }
// }
//
// BoxDecoration boxDecorationStyle(
//     {Color color,
//     DecorationImage image,
//     double borderRadius = 10,
//     List<BoxShadow> boxShadow}) {
//   return BoxDecoration(
//     color: color ?? whiteColor,
//     borderRadius: BorderRadius.circular(borderRadius),
//     image: image,
//     boxShadow: boxShadow ??
//         [
//           BoxShadow(
//             color: Colors.black12,
//             blurRadius: 6.0,
//             offset: Offset(0, 2),
//           ),
//         ],
//   );
// }
//
// AutoSizeText currencyFormat(
//     {@required int nominal,
//     @required TextStyle style,
//     int maxLines,
//     TextAlign align}) {
//   int nominalNoMin = nominal;
//   if (nominalNoMin < 0) {
//     nominalNoMin *= -1;
//   }
//   return AutoSizeText(
//     (nominal >= 0)
//         ? (nominal != 0)
//             ? NumberFormat.currency(
//                     locale: "id_ID", decimalDigits: 0, symbol: "Rp ")
//                 .format(nominalNoMin ?? 0)
//             : "-"
//         : (nominal != 0)
//             ? "( " +
//                 NumberFormat.currency(
//                         locale: "id_ID", decimalDigits: 0, symbol: "Rp ")
//                     .format(nominalNoMin ?? 0) +
//                 " )"
//             : "-",
//     style: style,
//     maxLines: maxLines ?? 1,
//     textAlign: align ?? TextAlign.start,
//   );
// }
//
// String currencyFormatString(int nominal) {
//   return NumberFormat.currency(locale: "id_ID", decimalDigits: 0, symbol: "Rp ")
//       .format(nominal ?? 0);
// }
//
// void flushbar(String message, BuildContext context,
//     {FlushbarPosition position,
//     Color backgroundColor,
//     bool isError = true,
//     Function(dynamic) onComplate}) {
//   Flushbar(
//     duration: Duration(seconds: 3),
//     flushbarPosition: position ?? FlushbarPosition.TOP,
//     backgroundColor: backgroundColor ?? isError ? Colors.red : Colors.green,
//     message: message,
//   )..show(context).then(onComplate ?? (value) {});
// }
//
// void snackbar(String title, String message,
//     {Color backgroundColor,
//     bool isError = true,
//     Function(dynamic) onComplate}) {
//   Get.snackbar(
//     title,
//     message,
//     duration: Duration(seconds: 3),
//     snackPosition: SnackPosition.TOP,
//     backgroundColor: backgroundColor ?? isError ? Colors.red : Colors.green,
//     colorText: whiteColor,
//   );
// }
//
// Future showDocument(BuildContext context, String url) async {
//   try {
//     await launch(url);
//   } catch (e) {
//     if (url == "-" || url == null) {
//       flushbar('Tidak terdapat dokumen', context);
//     } else {
//       flushbar('Dokument tidak dapat dibuka', context);
//     }
//   }
// }
//
Widget loading(double sized,
    {double diameter = 40, Color? color, double? value}) {
  return Container(
    height: diameter,
    width: diameter,
    child: CircularProgressIndicator(
      value: value,
      strokeWidth: sized,
      backgroundColor: color ?? mainColor,
      valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
    ),
  );
}
//
// PreferredSizeWidget appBar({
//   String title,
//   List<Widget> actions,
//   Color color,
//   TextStyle textStyle,
//   Color iconColor,
//   PreferredSizeWidget bottom,
//   Widget bodyAppBar,
//   double height,
//   bool isIconArrowBack = true,
// }) {
//   return PreferredSize(
//     preferredSize: Size.fromHeight(height ?? 80),
//     child: AppBar(
//       iconTheme: IconThemeData(color: iconColor ?? Colors.black),
//       backgroundColor: mainColor,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(
//           bottom: Radius.circular(30),
//         ),
//       ),
//       automaticallyImplyLeading: false,
//       flexibleSpace: SafeArea(
//         bottom: false,
//         child: bodyAppBar ??
//             Align(
//               alignment: Alignment.bottomLeft,
//               child: Container(
//                 margin: EdgeInsets.only(
//                   left: defaultMargin + 10,
//                   right: defaultMargin,
//                   bottom: defaultMargin,
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       child: Row(
//                         children: [
//                           if (isIconArrowBack)
//                             GestureDetector(
//                               onTap: () {
//                                 Get.back();
//                               },
//                               child: Icon(
//                                 Platform.isAndroid
//                                     ? Icons.arrow_back
//                                     : Icons.arrow_back_ios,
//                                 color: whiteColor,
//                                 // size: 30,
//                               ),
//                             ),
//                           Container(
//                             margin: EdgeInsets.only(
//                                 left: (isIconArrowBack) ? 20 : 0),
//                             child: Text(
//                               title,
//                               style: textStyle ??
//                                   whiteTextFontBig.copyWith(
//                                       // fontWeight: FontWeight.bold,
//                                       ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       child: Row(
//                         children: actions ?? [],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//       ),
//       elevation: 0,
//       bottom: bottom,
//     ),
//   );
// }
//
// PreferredSizeWidget appBar2(
//     {String title,
//     List<Widget> actions,
//     Color color,
//     TextStyle textStyle,
//     Color iconColor,
//     PreferredSizeWidget bottom,
//     Widget bodyAppBar,
//     double height,
//     bool isIconArrowBack = true,
//     double borderRadiusBottom = 30}) {
//   return AppBar(
//     toolbarHeight: height ?? 80,
//     iconTheme: IconThemeData(color: iconColor ?? Colors.black),
//     backgroundColor: mainColor,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.vertical(
//         bottom: Radius.circular(borderRadiusBottom),
//       ),
//     ),
//     automaticallyImplyLeading: false,
//     flexibleSpace: SafeArea(
//         bottom: false,
//         child: (bodyAppBar == null)
//             ? Align(
//                 alignment: Alignment.bottomLeft,
//                 child: Container(
//                   margin: EdgeInsets.only(
//                     left: defaultMargin + 10,
//                     right: defaultMargin,
//                     bottom: defaultMargin,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         child: Row(
//                           children: [
//                             if (isIconArrowBack)
//                               GestureDetector(
//                                 onTap: () {
//                                   Get.back();
//                                 },
//                                 child: Icon(
//                                   Platform.isAndroid
//                                       ? Icons.arrow_back
//                                       : Icons.arrow_back_ios,
//                                   color: whiteColor,
//                                   // size: 30,
//                                 ),
//                               ),
//                             Container(
//                               margin: EdgeInsets.only(
//                                   left: (isIconArrowBack) ? 20 : 0),
//                               child: Text(
//                                 title,
//                                 style: textStyle ??
//                                     whiteTextFontBig.copyWith(
//                                         // fontWeight: FontWeight.bold,
//                                         ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         child: Row(
//                           children: actions ?? [],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               )
//             : Container(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: defaultMargin,
//                   vertical: 10,
//                 ),
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             child: Row(
//                               children: [
//                                 if (isIconArrowBack)
//                                   GestureDetector(
//                                     onTap: () {
//                                       Get.back();
//                                     },
//                                     child: Icon(
//                                       Platform.isAndroid
//                                           ? Icons.arrow_back
//                                           : Icons.arrow_back_ios,
//                                       color: whiteColor,
//                                       // size: 30,
//                                     ),
//                                   ),
//                                 Container(
//                                   margin: EdgeInsets.only(
//                                       left: (isIconArrowBack) ? 20 : 0),
//                                   child: Text(
//                                     title,
//                                     style: textStyle ?? whiteTextFontBig,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             child: Row(
//                               children: actions ?? [],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     if (bodyAppBar != null)
//                       Container(
//                         child: bodyAppBar,
//                       ),
//                   ],
//                 ),
//               )),
//     elevation: 0,
//     bottom: bottom,
//   );
// }
//
// Future<void> alert(BuildContext context,
//     {AlertType alertType,
//     List<DialogButton> listButton,
//     String title,
//     String deskripsi,
//     ButtonsDirection buttonsDirection = ButtonsDirection.row}) async {
//   return Alert(
//           context: context,
//           type: alertType,
//           title: title,
//           desc: deskripsi,
//           buttons: listButton,
//           style: AlertStyle(buttonsDirection: buttonsDirection))
//       .show();
// }
//
// void deleteItemWidget(BuildContext context, {Function onPressedYes}) {
//   alert(context,
//       alertType: AlertType.warning,
//       title: 'Hapus',
//       deskripsi: 'Apakah adan yakin menghapus data ini ?',
//       listButton: [
//         DialogButton(
//           child: Text(
//             'Ya',
//             style: greyTextFontTitle.copyWith(
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           onPressed: onPressedYes ?? () async {},
//           color: whiteColor,
//         ),
//         DialogButton(
//           child: Text(
//             'Tidak',
//             style: whiteTextFontTitle.copyWith(
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           onPressed: () {
//             Get.back();
//           },
//           color: mainColor,
//         )
//       ]);
// }
//
// onScrollPage(ScrollController scrollController, Function onMaxScroll) {
//   double currentMaxScroll = scrollController.position.maxScrollExtent;
//   double currentPositionScroll = scrollController.position.pixels;
//   if (currentMaxScroll == currentPositionScroll) {
//     onMaxScroll();
//   }
// }
