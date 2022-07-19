import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hccapp/shared/shared.dart';
import 'package:hccapp/ui/widgets/widgets.dart';

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
          Text(
            'Select Fitur',
            style: blackTextFontBold.copyWith(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const FiturItem(
            title: 'Project saya',
            imageUrl: 'assets/project.png',
          ),
          const FiturItem(
            title: 'Slip Gaji',
            imageUrl: 'assets/slipgaji.png',
          ),
          const FiturItem(
            title: 'Claim',
            imageUrl: 'assets/claim.png',
          ),
          const FiturItem(
            title: 'Cuti',
            imageUrl: 'assets/cuti.png',
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
    );
  }
}
