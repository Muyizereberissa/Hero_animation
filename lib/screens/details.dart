import 'package:flutter/material.dart';
import 'home.dart';

class DetailScreen extends StatelessWidget {
  final Trip trip;

  const DetailScreen({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: trip.image,
            child: Image.asset(
              trip.image,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            trip.title,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "${trip.events} for ${trip.price}",
            style: const TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "This place offers unforgettable and beautiful experiences  .",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
