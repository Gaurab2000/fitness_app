import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:recipesapp/components/my_bottom_navigation_bar.dart';
 import 'package:fitness_app/widgets/pageview_workout_list.dart';
// import 'package:recipesapp/components/popular_recipe_list.dart';

class HomeSreen extends StatefulWidget {
  const HomeSreen({Key? key}) : super(key: key);

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 32, 33),
      body: SafeArea(
        child: ListView(
          primary: true,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32.5,
                vertical: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Fit Flex',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 242, 242, 245),
                    ),
                  ),
                  SizedBox(
                    height: 36,
                    child: SvgPicture.asset('assets/svg/icon-nav.svg'),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16.53,
            ),
            const PageViewRecipeList(),
            const SizedBox(
              height: 42.52,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
              ),
              child: Row(
                children: [
                  SvgPicture.asset('assets/svg/icon-popular.svg'),
                  const SizedBox(
                    width: 4.26,
                  ),
                  const Text(
                    'Popular',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xffF9AE89),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
           // const PopularRecipeList(),
          ],
        ),
      ),
     // bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
