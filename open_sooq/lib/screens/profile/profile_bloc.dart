import 'package:flutter/material.dart';
import 'package:open_sooq/models/profile_option_model.dart';

class ProfileBloc {
  List<ProfileOption> list1 = [
    ProfileOption(
        title: "Sales Team",
        backgroundColor: Colors.grey,
        icon: Icons.person,
        callback: () {
          print("Sales Team");
        })
  ];

  List<ProfileOption> list2 = [
    ProfileOption(
        title: "Create Shop Now",
        backgroundColor: Colors.blue,
        icon: Icons.shop,
        callback: () {
          print("Create Shop Now");
        }),
    ProfileOption(
        title: "Account Details",
        backgroundColor: Colors.blue,
        icon: Icons.king_bed,
        callback: () {
          print("Account Details");
        }),
    ProfileOption(
        title: "ID & c ...... etc",
        backgroundColor: Colors.blue,
        icon: Icons.king_bed,
        callback: () {
          print("ID & c ...... etc");
        }),
  ];
  List<ProfileOption> list3 = [
    ProfileOption(
      title: "Wallet",
      backgroundColor: Colors.green,
      icon: Icons.shop,
      callback: () {
        print("Wallet");
      },
    ),
    ProfileOption(
        title: "Add Credit",
        backgroundColor: Colors.green,
        icon: Icons.king_bed,
        callback: () {
          print("Add Credit");
        }),
    ProfileOption(
      title: "Recharge Card",
      backgroundColor: Colors.green,
      icon: Icons.card_giftcard,
      callback: () {
        print("Recharge Card");
      },
    ),
    ProfileOption(
      title: "Buy Bundles",
      backgroundColor: Colors.green,
      icon: Icons.sell,
      callback: () {
        print("Buy Bundles");
      },
    ),
  ];
}
