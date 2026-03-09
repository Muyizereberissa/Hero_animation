import 'package:flutter/material.dart';
import 'details.dart';

class Trip {
  final String title;
  final String events;
  final String price;
  final String image;

  Trip({
    required this.title,
    required this.events,
    required this.price,
    required this.image,
  });
}

final List<Trip> trips = [
  Trip(
    title: "Amahoro Stadium",
    events: "3 events",
    price: "\$350",
    image: "assets/images/amahorostadium.jpg",
  ),
  Trip(
    title: "Convetion center",
    events: "5 events",
    price: "\$400",
    image: "assets/images/convetioncenter.jpg",
  ),
  Trip(
    title: " BK Arena",
    events: "2 events",
    price: "\$750",
    image: "assets/images/kigali-arena.jpeg",
  ),
    Trip(
    title: "Kivu beach",
    events: "2 events",
    price: "\$750",
    image: "assets/images/kivubeach.jpg",
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kigali Trips"),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: trips.length,
        itemBuilder: (context, index) {
          final trip = trips[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailScreen(trip: trip),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.only(bottom: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Hero(
                    tag: trip.image,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.horizontal(
                        left: Radius.circular(12),
                      ),
                      child: Image.asset(
                        trip.image,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          trip.events,
                          style: const TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          trip.title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Text(
                      trip.price,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}