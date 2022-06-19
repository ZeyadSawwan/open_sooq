import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-8014765571140682/1184108988';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }
}
