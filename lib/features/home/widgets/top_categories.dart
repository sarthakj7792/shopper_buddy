import 'package:flutter/material.dart';
import 'package:shopper_buddy/constants/global_variables.dart';
import 'package:shopper_buddy/features/home/screens/category_deals_screen.dart';

class TopCategories extends StatelessWidget {
  const TopCategories({super.key});

  void navigateToCategoryDeals(BuildContext context,String category) {
    Navigator.pushNamed(context, CategoryDealsScreen.routeName,arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemExtent: 75,
          itemCount: GlobalVariables.categoryImages.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: ()=>navigateToCategoryDeals(context,GlobalVariables.categoryImages[index]['title']!),              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        GlobalVariables.categoryImages[index]['image']!,
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ),
                  Text(
                    GlobalVariables.categoryImages[index]['title']!,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
