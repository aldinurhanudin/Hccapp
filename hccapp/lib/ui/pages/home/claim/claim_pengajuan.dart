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

  File? image;
  final _picker = ImagePicker();
  bool showSpinner = false;

  Future getImage() async {
    final pickedFile =
        await _picker.pickImage(source: ImageSource.gallery, imageQuality: 80);

    if (pickedFile != null) {
      image = File(pickedFile.path);
      setState(() {});
    } else {
      print('no image selected');
    }
  }

  Future<void> uploadImage() async {
    setState(() {
      showSpinner = true;
    });
    var stream = new http.ByteStream(image!.openRead());
    stream.cast();
    var length = await image!.length();

    var uri = Uri.parse('https://fakestoreapi.com/products');

    var request = new http.MultipartRequest('POST', uri);

    request.fields['title'] = "Static title";

    var multiport = new http.MultipartFile('image', stream, length);

    request.files.add(multiport);

    var response = await request.send();

    print(response.stream.toString());
    if (response.statusCode == 200) {
      setState(() {
        showSpinner = false;
      });
      print('image uploaded');
    } else {
      print('failed');
    }
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
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 57,
                        margin: EdgeInsets.fromLTRB(2, 20, 27, 14),
                        child: Text(
                          "Kategori Claim",
                          style: blackTextFont,
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                              height: 50,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.black)),
                              child: DropdownButton(
                                isExpanded: true,
                                underline: SizedBox(),
                                value: nKategori,
                                onChanged: (String? value) {
                                  pilihKategori(value ??
                                      ""); //perubahaan saat kota di pilih
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
                        ],
                      ),
                    ],
                  ),
                ),
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
                SizedBox(height: 30),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 50,
                        margin: EdgeInsets.fromLTRB(2, 20, 27, 14),
                        child: Text(
                          "Nominal",
                          style: blackTextFont,
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.black)),
                            child: TextField(
                              controller: addressController,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.grey),
                                  hintText: 'Masukkan Nominal'),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 50,
                        margin: EdgeInsets.fromLTRB(2, 20, 27, 14),
                        child: Text(
                          "Bukti",
                          style: blackTextFont,
                        ),
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              getImage();
                            },
                            child: Container(
                              child: image == null
                                  ? Center(
                                      child: Container(
                                        height: 50,
                                        width: 200,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                                color: Colors.black)),
                                        child:
                                            Center(child: Text('Upload File ')),
                                      ),
                                    )
                                  : Container(
                                      child: Center(
                                        child: Image.file(
                                          File(image!.path).absolute,
                                          height: 100,
                                          width: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                // GestureDetector(
                //   onTap: () {
                //     uploadImage();
                //   },
                //   child: Container(
                //     height: 50,
                //     width: 200,
                //     color: Colors.blue,
                //     child: Center(child: Text('Upload ')),
                //   ),
                // ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 34),
                  height: 45,
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: RaisedButton(
                    onPressed: () {
                      // Get.to(() => UploadBukti());
                      uploadImage();
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
