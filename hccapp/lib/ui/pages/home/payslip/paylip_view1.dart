import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hccapp/shared/shared.dart';
import 'package:hccapp/ui/pages/home/payslip/payslip_download1.dart';

class PayslipView1 extends StatefulWidget {
  @override
  State<PayslipView1> createState() => PayslipView1State();
}

class PayslipView1State extends State<PayslipView1> {
  List<String> listTahun = ["2022", "2021", "2020", "2019", "2018"];

  String nTahun = "2022";
  int? nilaiTahun;

  void pilihTahun(String value) {
    //menampilkan kota yang dipilih
    setState(() {
      nTahun = value;
    });
  }

  List<String> listBulan = [
    "Januari",
    "Februari",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember",
  ];

  String nBulan = "Januari";
  int? nilaiBulan;

  void pilihBulan(String value) {
    //menampilkan kota yang dipilih
    setState(() {
      nBulan = value;
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
                  child: Text("Tahun", style: blackTextFont),
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
                      value: nTahun,
                      onChanged: (String? value) {
                        pilihTahun(value ?? ""); //perubahaan saat kota di pilih
                        nilaiTahun = listTahun.indexOf(value ??
                            ""); //mengambil nilai index berdasarkan urutan list
                      },
                      items: listTahun.map((String value) {
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
                  child: Text("Bulan", style: blackTextFont),
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
                      value: nBulan,
                      onChanged: (String? value) {
                        pilihBulan(value ?? ""); //perubahaan saat kota di pilih
                        nilaiBulan = listBulan.indexOf(value ??
                            ""); //mengambil nilai index berdasarkan urutan list
                      },
                      items: listBulan.map((String value) {
                        return DropdownMenuItem(
                          //tampilan isi data dropdown
                          child: Text(value),
                          value: value,
                        );
                      }).toList(),
                    )),
              ],
            ),
            SizedBox(height: 20),
            PayslipDownload1()
          ],
        ),
      ),
    );
  }
}
