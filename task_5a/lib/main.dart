import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RatingPage(),
    );
  }
}

class RatingPage extends StatefulWidget {
  const RatingPage({super.key});

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  int rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sameeksha - 24WH1A05C5"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Stateless Widget
            const Text(
              "Stateless Widget",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 50),
                Icon(Icons.star, color: Colors.yellow, size: 50),
                Icon(Icons.star, color: Colors.yellow, size: 50),
                Icon(Icons.star, color: Colors.yellow, size: 50),
                Icon(Icons.star, color: Colors.yellow, size: 50),
              ],
            ),

            const SizedBox(height: 40),

            // Stateful Widget
            const Text(
              "Stateful Widget",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      rating = 1;
                    });
                  },
                  icon: Icon(
                    rating >= 1 ? Icons.star : Icons.star_border,
                    color: Colors.yellow,
                    size: 50,
                  ),
                ),

                IconButton(
                  onPressed: () {
                    setState(() {
                      rating = 2;
                    });
                  },
                  icon: Icon(
                    rating >= 2 ? Icons.star : Icons.star_border,
                    color: Colors.yellow,
                    size: 50,
                  ),
                ),

                IconButton(
                  onPressed: () {
                    setState(() {
                      rating = 3;
                    });
                  },
                  icon: Icon(
                    rating >= 3 ? Icons.star : Icons.star_border,
                    color: Colors.yellow,
                    size: 50,
                  ),
                ),

                IconButton(
                  onPressed: () {
                    setState(() {
                      rating = 4;
                    });
                  },
                  icon: Icon(
                    rating >= 4 ? Icons.star : Icons.star_border,
                    color: Colors.yellow,
                    size: 50,
                  ),
                ),

                IconButton(
                  onPressed: () {
                    setState(() {
                      rating = 5;
                    });
                  },
                  icon: Icon(
                    rating >= 5 ? Icons.star : Icons.star_border,
                    color: Colors.yellow,
                    size: 50,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Text(
              "Rating: $rating / 5",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}