import 'package:comunikt/src/core/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

export 'package:easy_localization/easy_localization.dart';

export 'codegen_loader.g.dart';
export 'locale_keys.g.dart';

extension BuildContextChangeLocaleExtension on BuildContext {
  void changeLocale() {
    final actualLocale = locale;
    if (actualLocale.toString() == Constants.enLocale.toString()) {
      setLocale(Constants.esLocale);
    } else if (actualLocale.toString() == Constants.esLocale.toString()) {
      setLocale(Constants.enLocale);
    }
  }
}
