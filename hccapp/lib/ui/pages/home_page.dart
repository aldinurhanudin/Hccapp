part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          ProfileWidgets(),
          AbsenCard(),
          SizedBox(
            height: 20,
          ),
          // Text(
          //   'Select Fitur',
          //   style: blackTextFontBold.copyWith(
          //     fontSize: 16,
          //   ),
          // ),
          const SizedBox(
            height: 20,
          ),
          FiturItem(
            title: 'Project saya',
            imageUrl: 'assets/project.png',
            onTap: () {},
          ),
          FiturItem(
            title: 'Slip Gaji',
            imageUrl: 'assets/slipgaji.png',
            onTap: () async {
              Get.to(() => PayslipView1());
            },
          ),
          FiturItem(
            title: 'Claim',
            imageUrl: 'assets/claim.png',
            onTap: () async {
              Get.to(() => ClaimView());
            },
          ),
          FiturItem(
            title: 'Cuti',
            imageUrl: 'assets/cuti.png',
            onTap: () {},
          ),
          const FiturItem(
            title: 'Project saya',
            imageUrl: 'assets/projeksaya.png',
          ),
          const FiturItem(
            title: 'SPPD',
            imageUrl: 'assets/sppd.png',
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => controller.getPDF(),
      //   child: Icon(Icons.note),
      // ),
    );
  }
}
