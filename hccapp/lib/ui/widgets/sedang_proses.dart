part of 'widgets.dart';

class SedangProses extends StatelessWidget {
  const SedangProses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: 200,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage("assets/PictureClaim.png"),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Kamu tidak punya klaim yang sedang diproses',
              style: blackTextFont.copyWith(
                fontSize: 15,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  // onPressed: () => controller.getPDF(),
                  onPressed: () async {
                    Get.to(() => ClaimPengajuan());
                  },
                  style: ElevatedButton.styleFrom(
                    primary: mainColor,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 70, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Ajukan Claim',
                    style: whiteTextFontBig,
                  ),
                )),
          ],
        ),
      ],
    );
  }
}
