import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'current_state.dart';

class CurrentCubit extends Cubit<CurrentState> {
  CurrentCubit() : super(CurrentState());

  void currentNavbarMainCustomer(int current) {
    emit(
      state.copyWith(currentNavBarMainCustomer: current),
    );
  }

  void currentBannerHomeCustomer(int current) {
    emit(
      state.copyWith(currentBannerHomeCustomer: current),
    );
  }

  void currentTabProfile(int current) {
    emit(
      state.copyWith(currentTabProfile: current),
    );
  }

  void currentTabHistoryAbsence(int current) {
    emit(
      state.copyWith(currentTabHistoryAbsence: current),
    );
  }

  // Future<ApiReturnValue> getSetFile() async {
  //   ApiReturnValue result = await FilesServices.getMaxFiles();
  //   if (result.value != null) {
  //     emit(
  //       state.copyWith(
  //         fileUpload: (result.value as List<FileUpload>),
  //       ),
  //     );
  //   } else {
  //     emit(
  //       state.copyWith(fileUpload: []),
  //     );
  //   }
  //   return result;
  // }

  void radiusActiveAppBar(bool current) {
    emit(
      state.copyWith(radiusActiveAppBar: current),
    );
  }
}
