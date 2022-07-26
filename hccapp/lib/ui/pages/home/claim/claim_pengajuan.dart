part of 'claim.dart';

class ClaimPengajuan extends StatefulWidget {
  const ClaimPengajuan({Key? key}) : super(key: key);

  @override
  State<ClaimPengajuan> createState() => _ClaimPengajuanState();
}

class _ClaimPengajuanState extends State<ClaimPengajuan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightBackgroundColor,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: blackColor,
        ),
        title: Text('Claim',
            style: blackTextFontBold.copyWith(
              fontSize: 20,
            )),
      ),
    );
  }
}
