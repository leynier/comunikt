import 'dart:async';

import 'package:comunikt/src/domain/enums/enums.dart';
import 'package:comunikt/src/domain/repositories/repositories.dart';
import 'package:comunikt/src/presentation/blocs/theming/theming_dark.dart';
import 'package:comunikt/src/presentation/blocs/theming/theming_light.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'theming_bloc.freezed.dart';
part 'theming_event.dart';
part 'theming_state.dart';

abstract class IThemingBloc extends Bloc<ThemingEvent, ThemingState> {
  IThemingBloc(ThemingState initialState) : super(initialState);
}

@Singleton(as: IThemingBloc)
class ThemingBloc extends IThemingBloc {
  final ILocalRepository localRepository;

  ThemingBloc({required this.localRepository})
      : super(
          ThemingState(
            mode: ThemeMode.values[localRepository.getThemeMode().index],
            dark: darkTheme,
            light: lightTheme,
          ),
        );

  @override
  Stream<ThemingState> mapEventToState(
    ThemingEvent event,
  ) async* {
    yield* event.when(
      change: () async* {
        final actualThemingMode = localRepository.getThemeMode();
        final newThemingMode = ThemingMode
            .values[(actualThemingMode.index + 1) % ThemingMode.values.length];
        yield state.copyWith(mode: ThemeMode.values[newThemingMode.index]);
        await localRepository.setThemeMode(newThemingMode);
      },
    );
  }
}
