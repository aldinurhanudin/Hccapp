import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hccapp/shared/shared.dart';
import 'package:hccapp/ui/pages/home/payslip/modules/controllers/payslip_controller.dart';
import 'package:hccapp/ui/pages/pages.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

// import 'package:get/get.dart';
// import 'package:hccapp/shared/shared.dart';
// import 'package:snippet_coder_utils/FormHelper.dart';

// import '../controllers/payslip_controller.dart';

class PayslipView extends StatefulWidget {
  const PayslipView({Key? key}) : super(key: key);

  @override
  State<PayslipView> createState() => _PayslipViewState();
}

class _PayslipViewState extends State<PayslipView> {
  List<dynamic> countries = [];
  List<dynamic> statesMasters = [];
  List<dynamic> states = [];

  String? countryId;
  String? stateId;
  @override
  void initState() {
    super.initState();

    this.countries.add({"id": 1, "name": "2022"});
    this.countries.add({"id": 2, "name": "2021"});
    this.countries.add({"id": 3, "name": "2020"});
    this.countries.add({"id": 4, "name": "2019"});
    this.countries.add({"id": 5, "name": "2018"});
    this.countries.add({"id": 6, "name": "2017"});

    this.statesMasters = [
      {"ID": 1, "Name": "Januari", "ParentId": 1},
      {"ID": 2, "Name": "Februari", "ParentId": 1},
      {"ID": 3, "Name": "Maret", "ParentId": 1},
      {"ID": 4, "Name": "April", "ParentId": 1},
      {"ID": 5, "Name": "Mei", "ParentId": 1},
      {"ID": 6, "Name": "Juni", "ParentId": 1},
      {"ID": 7, "Name": "Juli", "ParentId": 1},
      {"ID": 8, "Name": "Agustus", "ParentId": 1},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: lightBackgroundColor,
        appBar: AppBar(
          backgroundColor: lightBackgroundColor,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: blackColor,
          ),
          title: Text('Slip Gaji',
              style: blackTextFontBold.copyWith(
                fontSize: 20,
              )),
        ),
        body: Column(
          children: [
            FormHelper.dropDownWidgetWithLabel(
              context,
              "Tahun",
              "Pilih Tahun",
              this.countryId,
              this.countries,
              (onChangedVal) {
                this.countryId = onChangedVal;
                print("Selected Country : $onChangedVal");

                this.states = this
                    .statesMasters
                    .where(
                      (stateItem) =>
                          stateItem["ParentId"].toString() ==
                          onChangedVal.toString(),
                    )
                    .toList();
                this.stateId = null;
              },
              (onValidateVal) {
                if (onValidateVal == null) {
                  return 'Please Select Country';
                }

                return null;
              },
              borderColor: Theme.of(context).primaryColor,
              borderFocusColor: Theme.of(context).primaryColor,
              borderRadius: 10,
              // optionValue: "val",
              // optionLabel: "name",
            ),
            FormHelper.dropDownWidgetWithLabel(
              context,
              "Bulan",
              "Pilih Bulan",
              this.stateId,
              this.states,
              (onChangedVal) {
                this.stateId = onChangedVal;
                print("Selected State: $onChangedVal");
              },
              (onValidate) {
                return null;
              },
              borderColor: Theme.of(context).primaryColor,
              borderFocusColor: Theme.of(context).primaryColor,
              borderRadius: 10,
              optionValue: "ID",
              optionLabel: "Name",
            ),
            Cari(),
          ],
        ),
      ),
    );
  }
}

class Cari extends GetView<PayslipController> {
  const Cari({
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
              onPressed: () => controller.getPDF(),
              // onPressed: () async {
              //   // setState(() {
              //   //   isLoading = true;
              //   // });

              //   Get.to(() => ProfilePage());
              //   // setState(() {
              //   //   isLoading = false;
              //   // });
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
