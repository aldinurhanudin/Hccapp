part of 'widgets.dart';

class ProfileWidgets extends StatelessWidget {
  const ProfileWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cyber Blitz Nusantara',
                style: greyTextFont.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Aldi Nurhanudin',
                style: blackTextFontBold.copyWith(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Mobile Developer',
                style: greyTextFont.copyWith(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage('assets/zayn.jpg')),
            ),
          ),
        ],
      ),
    );
  }
}
