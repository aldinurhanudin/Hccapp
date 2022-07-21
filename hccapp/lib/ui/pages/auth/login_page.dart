part of '../pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscureText = true;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            // buildBckCircleSmall(),
            // buildBckCircleBig(),
            buildVersion(),
            buildBodyPage(),
          ],
        ),
      ),
    );
  }

  Align buildVersion() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: Text(
          'Version 1.0.0',
          style: blackTextFont.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Positioned buildBckCircleBig() {
    return Positioned(
      bottom: -300,
      right: -90,
      left: -50,
      child: Center(
        child: Container(
          height: Get.width + 100,
          width: Get.width + 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [
                0.0,
                1.0,
              ],
              colors: [
                Colors.blueGrey.withOpacity(0.8),
                Colors.white.withOpacity(0.8)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Positioned buildBckCircleSmall() {
    return Positioned(
      bottom: 5,
      right: -200,
      // left: 0,
      child: Center(
        child: Container(
          height: Get.width * 0.8,
          width: Get.width * 0.8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [
                0.0,
                1.0,
              ],
              colors: [
                Colors.blueGrey.withOpacity(0.8),
                Colors.white.withOpacity(0.8)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildBodyPage() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
      child: ListView(
        children: [
          // Logo App
          Container(
            height: 200,
            margin: const EdgeInsets.only(top: 50, bottom: 20),
          ),

          //Hallo, Please log in to your account
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
                child: Image.asset('assets/logo.png'),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Hello,',
                style: blackTextFont.copyWith(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20, top: 8),
                child: Text(
                  'Please log in to your account',
                  style: blackTextFontBig,
                ),
              ),
            ],
          ),
          // Form username & Password
          Column(
            children: [
              buildTextField(
                title: 'Username',
                controller: usernameController,
                prefixIcon: const Icon(
                  Icons.person,
                  color: mainColor,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              buildTextField(
                title: 'Password',
                controller: passwordController,
                prefixIcon: const Icon(
                  Icons.lock,
                  color: mainColor,
                ),
                obscureText: obscureText,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  child: obscureText
                      ? const Icon(
                          Icons.remove_red_eye_outlined,
                          color: mainColor,
                        )
                      : const Icon(
                          Icons.remove_red_eye,
                          color: mainColor,
                        ),
                ),
              ),
            ],
          ),

          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: (!isLoading)
                    ? ElevatedButton(
                        onPressed: () async {
                          setState(() {
                            isLoading = true;
                          });

                          Get.to(() => const MainPage());
                          setState(() {
                            isLoading = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: mainColor,
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 70, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: whiteTextFontBig,
                        ),
                      )
                    : loading(4),
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }

  Container buildTextField({
    required String title,
    required TextEditingController controller,
    required Widget prefixIcon,
    Widget? suffixIcon,
    bool obscureText = false,
  }) {
    return Container(
      height: 55,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: accentColor4,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0XFF333333), width: 1),
      ),
      // child: Row(
      //   children: [Icon(Icons.person_rounded)],
      // ),
      child: Center(
        child: Theme(
          data: ThemeData(
            primaryColor: mainColor,
            iconTheme: const IconThemeData(
              color: mainColor,
            ),
          ),
          child: TextField(
            style: blackTextFontBig,
            obscureText: obscureText,
            cursorColor: mainColor,
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: title,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
            ),
          ),
        ),
      ),
    );
  }
}
