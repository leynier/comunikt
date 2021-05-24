import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: BlocObserver)
class SimpleBlocObserver extends BlocObserver {
  final Logger logger;

  SimpleBlocObserver({required this.logger});

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    logger.i(
      'Event: ${transition.event}\n'
      'From: ${transition.currentState}\n'
      'To: ${transition.nextState}',
    );
  }
}
