import 'package:comunikt/src/presentation/i18n/i18n.dart';

String getTitle(String sufix) {
  final appName = LocaleKeys.app_name.tr();
  return '$appName - $sufix';
}
