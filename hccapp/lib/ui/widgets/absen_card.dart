part of 'widgets.dart';

class AbsenCard extends StatelessWidget {
  const AbsenCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      margin: const EdgeInsets.only(
        top: 30,
      ),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/bg_card.png',
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '25 Juli 2022',
            style: whiteTextFont.copyWith(
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text('07:00:00',
                  style: whiteTextFontBigBold.copyWith(
                    fontSize: 35,
                  )),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Click to enter attendance',
            style: greyTextFont.copyWith(
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          Text(
            'Late tolerance limit 09.00',
            style: whiteTextFont.copyWith(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
