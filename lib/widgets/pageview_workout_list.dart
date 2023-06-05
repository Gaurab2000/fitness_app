import 'package:fitness_app/screens/workoutchallenge.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/widgets/recipe_card.dart';
import 'package:fitness_app/models/fitness.dart';
import 'package:fitness_app/screens/tabs.dart';
class PageViewRecipeList extends StatefulWidget {
  const PageViewRecipeList({Key? key}) : super(key: key);

  @override
  State<PageViewRecipeList> createState() => _PageViewRecipeListState();
}

class _PageViewRecipeListState extends State<PageViewRecipeList> {
  final PageController pageController = PageController(viewportFraction: 0.75);

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 401,
      child: PageView.builder(
        padEnds: false,
        controller: pageController,
        itemCount: fitnesses.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          bool active = index == currentPage;
          return Opacity(
            opacity: currentPage == index? 1.0: 0.5,
            child: GestureDetector(
              onTap: () {
        // Handle the onTap event for the recipe card
        switch (index) {
          case 0:
            Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TabsScreen()),);
            break;
          case 1:
       Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TabsScreen()),);
            break;
          case 2:
           Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WorkoutChallengePage()),);
            break;
          // Add more cases for additional screens
        }
      },
              child: RecipeCard(
                active: active,
                index: index,
                fitness: fitnesses[index],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      int position = pageController.page!.round();
      if (currentPage != position) {
        {
          setState(() {
            currentPage = position;
          });
        }
      }
    });
  }
}
