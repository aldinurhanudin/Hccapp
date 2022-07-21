part of '../pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentCubit, CurrentState>(
      builder: (_, current) {
        return Scaffold(
          bottomNavigationBar:
              buildBottomNavigationBar(current.currentNavBarMainCustomer),
          body: tabs(current.currentNavBarMainCustomer),
        );
      },
    );
  }

  Widget tabs(int current) {
    final tabs = [
      Center(
        child: HomePage(),
      ),
      const Center(
        child: Text('Search Page'),
      ),
      // const Center(
      //   child: Text('Notification Page'),
      // ),
      // const Center(
      //   child: Text('Notification Page'),
      // ),
      Center(
        child: ProfilePage(),
      )
    ];
    return tabs[current];
  }

  Widget buildBottomNavigationBar(int current) {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 5),
      child: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: mainColor,
        unselectedItemColor: Colors.grey,
        currentIndex: current,
        backgroundColor: Colors.grey[100],
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          context.read<CurrentCubit>().currentNavbarMainCustomer(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.home,
              size: 25,
            ),
            label: "Home",
          ),
          // BottomNavigationBarItem(
          //   icon: FaIcon(
          //     FontAwesomeIcons.fingerprint,
          //     size: 25,
          //   ),
          //   label: "Absensi",
          // ),
          // BottomNavigationBarItem(
          //   icon: FaIcon(
          //     FontAwesomeIcons.palfed,
          //     size: 25,
          //   ),
          //   label: "Feed",
          // ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.search,
              size: 25,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.userAlt,
              size: 25,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
