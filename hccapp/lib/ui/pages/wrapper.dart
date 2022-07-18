part of 'pages.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginPage();
    // return FutureBuilder<ApiReturnValue>(
    //   future: context.read<UsersCubit>().init(),
    //   builder: (_, snapshot) {
    //     if (snapshot.hasData) {
    //       var resultSnapshot = snapshot.data;
    //       if (resultSnapshot.message != null) {
    //         print(resultSnapshot.message);
    //       }
    //     }
    //     return BlocBuilder<UsersCubit, UsersState>(
    //       builder: (_, userState) {
    //         if (userState is UsersLoaded) {
    //           if (userState.user != null) {
    //             initGetDataWrapper(context);
    //             return MainCostumerPage();
    //           } else {
    //             return LoginPage();
    //           }
    //         } else {
    //           print('Go Login');
    //           return Scaffold(
    //             body: Center(
    //               child: loading(4),
    //             ),
    //           );
    //         }
    //       },
    //     );
    //   },
    // );
  }
}
