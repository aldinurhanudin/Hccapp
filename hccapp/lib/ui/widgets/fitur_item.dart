part of 'widgets.dart';

class FiturItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final bool isSelected;

  const FiturItem({
    Key? key,
    required this.title,
    required this.imageUrl,
    this.isSelected = false,
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
        border: Border.all(
          width: 0,
          // color: isSelected ? mainColor : whiteColor,
        ),
      ),
      child: GestureDetector(
        onTap: () async {
          // setState(() {
          //   // isLoading = true;
          // });

          Get.to(() => LoginPage());
          // setState(() {
          //   // isLoading = false;
          // });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              imageUrl,
              height: 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
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
      ),
    );
  }
}
