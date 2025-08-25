import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_nav_state.freezed.dart';

@freezed
class BottomNavState<T> with _$BottomNavState {
  const factory BottomNavState.initial() = BottomNavInitial;

  const factory BottomNavState.changeNav(int index) = BottomNavChangeNav;
}
