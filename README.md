# Kigali Trips – Flutter Hero Animation 
### Project Overview

Kigali Trips is a simple Flutter application created to demonstrate the use of Hero Animation in Flutter.
The app displays a list of travel destinations. When the user taps on a trip card, the app navigates to a details screen, and the image smoothly transitions from the list view to the detail page using Hero animation.

This animation creates a visually appealing effect where the selected image appears to expand seamlessly into the next screen, improving the user experience and making navigation feel natural.

## Objectives of the Project

The purpose of this project is to:

- Demonstrate how Hero animations work in Flutter
- Show how to transition UI elements between screens
- Practice navigation between screens
- Understand how Flutter handles shared element transitions

### Application Features

1. Trip List Screen (Home Screen)

The home screen displays a list of travel destinations.

Each card contains:

- Destination image
- Number of events
- Trip title
- Price

Users can tap on any trip card to view more details.

### Key UI components used:

- ListView.builder

- Card

- GestureDetector

- Hero

- Image.asset

2. Trip Details Screen

When you select a trip, the app navigates to its Detailed Screen.

This screen displays:

- Large image of the destination
- Trip title
- Event details
- Price
- Short description

The Hero widget ensures the image smoothly transitions from the previous screen.

### What is Hero Animation?

  Hero Animation is a shared element transition animation in Flutter.

  It allows a widget to animate smoothly between two screens when navigating.

  Instead of the screen changing abruptly, the element appears to move from one page to another.

### Example

When you taps the image in the list:

Amahoro stadium  →  Expands →  Detail Screen for Amahoro stadium

## How Hero Animation Works in This Project

Hero animations require three main things:

1. Hero widget on the first screen

In the home screen, each image is wrapped with a Hero widget.

Hero(
  tag: trip.image,
  child: Image.asset(
    trip.image,
    width: 100,
    height: 100,
    fit: BoxFit.cover,
  ),
)
2.  Hero widget on the destination screen

The destination screen must contain another Hero widget with the same tag.

Hero(
  tag: trip.image,
  child: Image.asset(
    trip.image,
    width: double.infinity,
    height: 300,
    fit: BoxFit.cover, 
  ),
)

3.  Matching Hero tags

The tag property must be identical on both screens.

In this project:

tag: trip.image

Flutter uses this tag to know which widgets should animate between screens.

## Main Components Explained
Trip Model

A Trip class is used to represent each destination.

class Trip {
  final String title;
  final String events;
  final String price;
  final String image;
}

This passes the selected trip to the Detail Screen.

## UI Widgets Used

This project uses several Flutter widgets including:


Scaffold: Page structure
AppBar:   Top navigation bar
ListView.builder:  Display dynamic lists
Card : UI container for trips
GestureDetector: Detect user taps
Hero: Shared element animation
Image.asset: Display local images
Navigator: Screen navigation



### How to Run the Project
1.  Clone the repository
git clone <https://github.com/Muyizereberissa/Hero_animation.git>

2. Install dependencies
flutter pub get

3. Run the app
flutter run

## Important Notes About Hero Animation

- When using Hero animations, you must ensure:

- Both screens have a Hero widget

- The tag values match exactly

- Only one Hero per tag per screen

The animation works best for images, icons, and cards


 ## Author

Developed using Flutter to demonstrate Hero Animations and screen navigation.