part of 'claim.dart';

class ClaimPengajuan extends StatefulWidget {
  @override
  State<ClaimPengajuan> createState() => ClaimPengajuanState();
}

class ClaimPengajuanState extends State<ClaimPengajuan> {
  List<String> listKategori = [
    "Transportasi",
    "Makanan",
    "Penginapan",
    "Lain-lain"
  ];

  String nKategori = "Transportasi";
  int? nilaiKategori;

  void pilihKategori(String value) {
    //menampilkan kota yang dipilih
    setState(() {
      nKategori = value;
    });
  }

  List<String> listTipe = [
    "General",
    "SPPD",
  ];

  String nTipe = "General";
  int? nilaiTipe;

  void pilihTipe(String value) {
    //menampilkan kota yang dipilih
    setState(() {
      nTipe = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController houseController = TextEditingController();

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
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                Container(
                  width: double.infinity,
                  margin:
                      EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
                  child: Text("Tipe Claim", style: blackTextFont),
                ),
                Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black)),
                    child: DropdownButton(
                      isExpanded: true,
                      underline: SizedBox(),
                      value: nTipe,
                      onChanged: (String? value) {
                        pilihTipe(value ?? ""); //perubahaan saat kota di pilih
                        nilaiTipe = listTipe.indexOf(value ??
                            ""); //mengambil nilai index berdasarkan urutan list
                      },
                      items: listTipe.map((String value) {
                        return DropdownMenuItem(
                          //tampilan isi data dropdown
                          child: Text(value),
                          value: value,
                        );
                      }).toList(),
                    )),
                Container(
                  width: double.infinity,
                  margin:
                      EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
                  child: Text("Kategori Claim", style: blackTextFont),
                ),
                Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black)),
                    child: DropdownButton(
                      isExpanded: true,
                      underline: SizedBox(),
                      value: nKategori,
                      onChanged: (String? value) {
                        pilihKategori(
                            value ?? ""); //perubahaan saat kota di pilih
                        nilaiKategori = listKategori.indexOf(value ??
                            ""); //mengambil nilai index berdasarkan urutan list
                      },
                      items: listKategori.map((String value) {
                        return DropdownMenuItem(
                          //tampilan isi data dropdown
                          child: Text(value),
                          value: value,
                        );
                      }).toList(),
                    )),
                Container(
                  width: double.infinity,
                  margin:
                      EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
                  child: Text("Keterangan", style: blackTextFont),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black)),
                  child: TextField(
                    controller: addressController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: 'Masukkan Keterangan'),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin:
                      EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
                  child: Text("Nominal", style: blackTextFont),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black)),
                  child: TextField(
                    controller: houseController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: 'Masukkan Nominal'),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin:
                      EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
                  child: Text("Bukti", style: blackTextFont),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black)),
                  child: TextField(
                    controller: houseController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: 'Upload Bukti'),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 34),
                  height: 45,
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: RaisedButton(
                    onPressed: () async {
                      Get.to(() => UploadBukti());
                    },
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: mainColor,
                    child: Text(
                      'Kirim Pengajuan Claim',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
