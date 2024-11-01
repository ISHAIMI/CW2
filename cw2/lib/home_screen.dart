import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {
      'name': 'Pasta Carbonara',
      'ingredients': 'Pasta, eggs, cheese, pancetta, pepper',
      'instructions': '1. Boil pasta. 2. Mix eggs and cheese. 3. Add pancetta.'
    },
    {
      'name': 'Chicken Curry',
      'ingredients': 'Chicken, curry powder, coconut milk, vegetables',
      'instructions': '1. Cook chicken. 2. Add spices. 3. Stir in coconut milk.'
    },
    // Add more recipes as needed
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Book'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),  // Padding for better scaling
        child: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 2,
              child: ListTile(
                title: Text(recipes[index]['name']!),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(recipe: recipes[index]),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
