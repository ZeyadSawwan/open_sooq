import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:open_sooq/screens/main_container/main_container_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainContainerScreen extends StatelessWidget {
  MainContainerScreen({Key? key}) : super(key: key);
  final _bloc = MainContainerBloc();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
        valueListenable: _bloc.currentTabIndexNotifier,
        builder: (context, index, child) {
          return Scaffold(
            appBar: index != 2
                ? AppBar(
                    automaticallyImplyLeading: false,
                    backgroundColor: Colors.red,
                    title: Row(
                      children: [
                        Text(_bloc.title(index, context)),
                        Expanded(child: Container())
                      ],
                    ),
                  )
                : null,
            body: SafeArea(
              child: IndexedStack(
                index: index,
                children: _bloc.navTabs,
              ),
            ),
            bottomNavigationBar: ConvexAppBar(
              style: TabStyle.fixedCircle,
              backgroundColor: Colors.red,
              top: -20,
              height: 55,
              items: [
                TabItem(
                  icon: Icons.home,
                  title: AppLocalizations.of(context)!.bottom_tabbar_home,
                ),
                TabItem(
                  icon: Icons.message,
                  title: AppLocalizations.of(context)!.bottom_tabbar_chat,
                ),
                const TabItem(icon: Icons.add),
                TabItem(
                  icon: Icons.receipt,
                  title: AppLocalizations.of(context)!.bottom_tabbar_mypost,
                ),
                TabItem(
                  icon: Icons.person,
                  title: AppLocalizations.of(context)!.bottom_tabbar_profile,
                ),
              ],
              initialActiveIndex: 0,
              onTap: (int index) => _bloc.currentTabIndexNotifier.value = index,
            ),
          );
        });
  }
}
