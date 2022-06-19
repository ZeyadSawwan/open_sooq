import 'package:flutter/material.dart';
import 'package:open_sooq/utils/shared_widgets/custom_text.dart';
import 'package:url_launcher/url_launcher.dart';

class FollowUsView extends StatelessWidget {
  const FollowUsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 75,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3)),
        ], color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Row(
            children: [
              const CustomText(
                title: "Follow Us On",
                fontSize: 17,
                fontWeight: FontWeight.bold,
                fontColor: Colors.black,
              ),
              Expanded(child: Container()),
              socialMediaIcon(
                  imageName: "linkedin_icon", url: "https://www.linkedin.com/"),
              socialMediaIcon(
                  imageName: "youtube_icon", url: "https://www.youtube.com/"),
              socialMediaIcon(
                  imageName: "facebook_icon",
                  url: "https://web.facebook.com/?_rdc=1&_rdr"),
            ],
          ),
        ),
      ),
    );
  }

  Widget socialMediaIcon({required String imageName, required String url}) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: InkWell(
        onTap: () async {
          if (!await launchUrl(Uri.parse(url))) throw "could not launch $url";
        },
        child: SizedBox(
          width: 40,
          height: 50,
          child: Image.asset("assets/images/$imageName.jpg"),
        ),
      ),
    );
  }
}
