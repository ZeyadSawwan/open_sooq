import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:open_sooq/utils/ads_helper.dart';

class AddMobBanner extends StatefulWidget {
  const AddMobBanner({Key? key}) : super(key: key);

  @override
  State<AddMobBanner> createState() => _AddMobBannerState();
}

class _AddMobBannerState extends State<AddMobBanner> {
  late BannerAd _bannerAd;

  bool _isBannerAdReady = false;

  @override
  void initState() {
    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBannerAdReady = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          _isBannerAdReady = false;
          ad.dispose();
        },
      ),
    );

    _bannerAd.load();
    super.initState();
  }

  Widget build(BuildContext context) {
    return _isBannerAdReady
        ? Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: _bannerAd.size.width.toDouble(),
              height: _bannerAd.size.height.toDouble(),
              child: AdWidget(ad: _bannerAd),
            ),
          )
        : Container();
  }
}
