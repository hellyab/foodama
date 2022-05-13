import 'package:flutter/material.dart';
import 'package:foodama/features/home/presentation/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final categories = [
    "Recommended",
    "Breakfast",
    "Lunch",
    "Dinner",
    "Vegan",
    "Junk Food",
    "Non Veg"
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 35,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return TabChip(
                  isSelected: index == selectedIndex,
                  onPressed: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  text: categories[index],
                );
              },
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 275,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return const FoodCard();
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
