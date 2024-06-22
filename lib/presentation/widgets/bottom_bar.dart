import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:internshala/data/providers/MainHomeProvider.dart';
import 'package:internshala/presentation/themes/colors.dart';
import 'package:provider/provider.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainHomeProvider>(
      builder: (context, mainHomeProvider, child) {
        return BottomNavigationBar(
          currentIndex: mainHomeProvider.currentIndex,
          selectedItemColor: AppColors.primaryBlue,
          selectedLabelStyle:
              TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          // Set the font size
          unselectedLabelStyle: TextStyle(fontSize: 12),
          onTap: (index) {
            mainHomeProvider.updateCurrentIndex(index);
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                mainHomeProvider.currentIndex == 0
                    ? "assets/images/icons/home_fill.svg"
                    : "assets/images/icons/home_unfill.svg",
                height: 20,
                width: 20,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                mainHomeProvider.currentIndex == 1
                    ? "assets/images/icons/send_fill.svg"
                    : "assets/images/icons/send_unfill.svg",
                height: 20,
                width: 20,
              ),
              label: 'Internships',
            ),
            BottomNavigationBarItem(
              icon: mainHomeProvider.currentIndex == 2
                  ? Icon(Icons.work)
                  : Icon(Icons.work_outline),
              label: 'Jobs',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                mainHomeProvider.currentIndex == 3
                    ? "assets/images/icons/clubs_fill.svg"
                    : "assets/images/icons/clubs_unfill.svg",
                height: 20,
                width: 20,
              ),
              label: 'Clubs',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                mainHomeProvider.currentIndex == 4
                    ? "assets/images/icons/course_fill.svg"
                    : "assets/images/icons/course_unfill.svg",
                height: 20,
                width: 20,
              ),
              label: 'Courses',
            ),
          ],
        );
      },
    );
  }
}
