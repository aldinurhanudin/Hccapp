// import 'package:flutter/material.dart';
part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  static String tag = 'Profilepage';
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("My Profile"),
        // ),
        body: Container(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 64.32, width: 63.44),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.only(
                      left: 25,
                      right: 29,
                      top: 69.82,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 27,
                              // backgroundColor: Colors.white,
                              backgroundImage: AssetImage(
                                'assets/zayn.jpg',
                              ),
                            ),
                            SizedBox(width: 25),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Aldi',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('aldinurhanudin08@gmail.com')
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 10,
                    color: Colors.black.withOpacity(0.2),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 16),
                    // child: generateDashedDivider(
                    //     MediaQuery.of(context).size.width -
                    //         2 * defaultMargin),
                  ),
                  GestureDetector(
                    onTap: () async {
                      setState(() {
                        // isLoading = true;
                      });

                      Get.to(() => MainPage());
                      setState(() {
                        // isLoading = false;
                      });
                    },
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset("assets/user_pic.png")),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Edit Profile",
                          style: blackTextFont.copyWith(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    height: 10,
                    color: Color.fromARGB(255, 161, 160, 160),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 16),
                    // child: generateDashedDivider(
                    //     MediaQuery.of(context).size.width -
                    //         2 * defaultMargin),
                  ),
                  GestureDetector(
                    onTap: () {},
                    // async {
                    //   setState(() {
                    //     // isLoading = true;
                    //   });

                    //   Get.to(() => EditProfilePage());
                    //   setState(() {
                    //     // isLoading = false;
                    //   });
                    // },
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset("assets/my_wallet.png")),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Dompetku",
                          style: blackTextFont.copyWith(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    // height: 2,
                    color: Color.fromARGB(255, 161, 160, 160),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 16),
                    // child: generateDashedDivider(
                    //     MediaQuery.of(context).size.width -
                    //         2 * defaultMargin),
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                          width: 24,
                          height: 24,
                          child: Image.asset("assets/language.png")),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Bahasa",
                        style: blackTextFont.copyWith(fontSize: 16),
                      )
                    ],
                  ),
                  Divider(
                    // height: 2,
                    color: Color.fromARGB(255, 161, 160, 160),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 16),
                    // child: generateDashedDivider(
                    //     MediaQuery.of(context).size.width -
                    //         2 * defaultMargin),
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                          width: 24,
                          height: 24,
                          child: Image.asset("assets/help_centre.png")),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Bantuan",
                        style: blackTextFont.copyWith(fontSize: 16),
                      )
                    ],
                  ),
                  Divider(
                    // height: 2,
                    color: Color.fromARGB(255, 161, 160, 160),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 16),
                    // child: generateDashedDivider(
                    //     MediaQuery.of(context).size.width -
                    //         2 * defaultMargin),
                  ),
                  GestureDetector(
                    onTap: () async {
                      setState(() {
                        // isLoading = true;
                      });

                      Get.to(() => const LoginPage());
                      setState(() {
                        // isLoading = false;
                      });
                    },
                    // async {
                    //   await AuthServices.signOut();
                    //   context.bloc<UserBloc>().add(SignOut());
                    // },
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                            width: 24,
                            height: 24,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.fromLTRB(5, 3, 9, 3),
                                  color: accentColor2,
                                ),
                                Icon(
                                  Icons.logout,
                                  color: mainColor,
                                  size: 24,
                                ),
                              ],
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Sign Out",
                          style: blackTextFont.copyWith(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
