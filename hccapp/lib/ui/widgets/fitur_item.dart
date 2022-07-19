part of 'widgets.dart';

class FiturItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  const FiturItem({
    Key? key,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 18,
      ),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: whiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imageUrl,
            height: 100,
          ),
          Column(
            children: [
              Text(
                title,
                style: blackTextFont.copyWith(
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
