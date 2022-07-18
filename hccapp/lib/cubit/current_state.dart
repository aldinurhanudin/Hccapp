part of 'current_cubit.dart';

class CurrentState extends Equatable {
  final int currentNavBarMainCustomer;
  final int currentBannerHomeCustomer;
  final int currentTabProfile;
  final int currentTabHistoryAbsence;
  final bool radiusActiveAppBar;
  // final List<FileUpload> fileUpload;
  CurrentState({
    this.currentBannerHomeCustomer = 0,
    this.currentNavBarMainCustomer = 0,
    this.currentTabProfile = 0,
    this.currentTabHistoryAbsence = 0,
    // this.fileUpload,
    this.radiusActiveAppBar = false,
  });
  @override
  List<Object> get props => [
        currentBannerHomeCustomer,
        currentNavBarMainCustomer,
        currentTabProfile,
        currentTabHistoryAbsence,
        // fileUpload,
        radiusActiveAppBar,
      ];

  CurrentState copyWith({
    int? currentNavBarMainCustomer,
    int? currentBannerHomeCustomer,
    int? currentTabProfile,
    int? currentTabHistoryAbsence,
    // List<FileUpload> fileUpload,
    bool? radiusActiveAppBar,
  }) {
    return CurrentState(
      currentBannerHomeCustomer:
          currentBannerHomeCustomer ?? this.currentBannerHomeCustomer,
      currentNavBarMainCustomer:
          currentNavBarMainCustomer ?? this.currentNavBarMainCustomer,
      currentTabProfile: currentTabProfile ?? this.currentTabProfile,
      currentTabHistoryAbsence:
          currentTabHistoryAbsence ?? this.currentTabHistoryAbsence,
      // fileUpload: fileUpload ?? this.fileUpload,
      radiusActiveAppBar: radiusActiveAppBar ?? this.radiusActiveAppBar,
    );
  }
}
