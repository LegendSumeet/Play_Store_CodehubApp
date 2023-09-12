import 'package:coodehub/controllers/navcontroller.dart';
import 'package:coodehub/ui/pages/bootcamp/bootcamp.dart';
import 'package:coodehub/ui/pages/homepage.dart';
import 'package:coodehub/ui/pages/interships/interships.dart';
import 'package:coodehub/ui/pages/memes/meme.dart';
import 'package:coodehub/ui/pages/more/more.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../constants/app_constants.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final NavbarController navcontroller = Get.put(NavbarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: navcontroller.onPageChanged,
        controller: navcontroller.pageController,
        physics: const BouncingScrollPhysics(),
        children:   [
          const HomePage(),
          const InternshipsPage(),
          const Memes(),
          EventsAndBootcampsScreen(),
          const MoreSettings(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _bottomAppBarItem(
                    icon: IconlyLight.home,
                    page: 0,
                    label: "Home",
                  ),
                  _bottomAppBarItem(
                    icon: IconlyLight.work,
                    page: 1,
                    label: "Internships",
                  ),
                  _bottomAppBarItem(
                    icon: IconlyLight.activity,
                    page: 2,
                    label: "Memes",
                  ),
                  _bottomAppBarItem(
                    icon: IconlyLight.category,
                    page: 3,
                    label: "BootCamp",
                  ),
                  _bottomAppBarItem(
                    icon: IconlyLight.more_square,
                    page: 4,
                    label: "More",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottomAppBarItem({
    required IconData icon,
    required int page,
    required String label,
  }) {
    final isActive = navcontroller.currentPage.value == page;

    return ZoomTapAnimation(
      onTap: () {
        navcontroller.gotoTab(
          page,
          navigateCallback: (newPage) {
            navcontroller.currentPage.value = newPage;
          },
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isActive ? Colors.blue : Colors.white,
            size: isActive ? 30 : 24,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isActive ? kDark : Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
