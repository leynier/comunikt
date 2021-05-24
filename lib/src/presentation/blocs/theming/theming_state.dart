part of 'theming_bloc.dart';

@freezed
class ThemingState with _$ThemingState {
  const factory ThemingState({
    required ThemeMode mode,
    required ThemeData dark,
    required ThemeData light,
  }) = _ThemingState;
}
