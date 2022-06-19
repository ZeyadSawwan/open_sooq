import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:open_sooq/utils/shared_widgets/custom_text.dart';

class ProfileHeaderView extends StatelessWidget {
  const ProfileHeaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset(
                        "assets/images/avatar.jpg",
                        scale: 0.7,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const CustomText(
                      title: "Hello Guest!",
                      fontSize: 15,
                      fontColor: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 120,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            side: const BorderSide(
                              width: 2,
                              color: Colors.blue,
                            ),
                            primary: Colors.white),
                        onPressed: () {},
                        child: const CustomText(
                          title: "Login",
                          fontColor: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {},
                        child: const CustomText(
                          title: "Open Shop",
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
          Container(
            height: 1,
            color: Colors.black12,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                bottomView("Ads", "0"),
                bottomView("Views", "0"),
                bottomView("Credit", "0")
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget bottomView(String title, String value) {
    return Column(
      children: [
        CustomText(
          title: value,
          fontSize: 14,
          fontColor: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          height: 2,
        ),
        CustomText(
          title: title,
          fontSize: 13,
          fontColor: Colors.black54,
        )
      ],
    );
  }
}
