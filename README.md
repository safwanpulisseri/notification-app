# Food Delivery App

A Flutter application for food delivery, structured using the MVVM (Model-View-ViewModel) architecture with the Provider package. This app includes three main screens: a splash screen, a home screen to showcase various food items, and a notification page to display details of booked orders fetched from an API.

## Features

- **Splash Screen**: Provides a smooth introduction to the app.
- **Home Screen**: Displays a list of different food items with detailed information.
- **Notification Page**: Shows details of booked orders and their status.
- **API Integration**: Fetches food details and order information from a RESTful API.

## Project Structure

```plaintext
lib/
├── models/                   # Model layer
│   ├── food_model.dart       # Data class representing food items
│   ├── order_model.dart      # Data class representing orders
│   └── food_service.dart     # Services and repositories for data handling
│
├── views/                    # View layer
│   ├── splash_view.dart      # Splash screen UI
│   ├── home_view.dart        # Home screen showing various foods
│   ├── notification_view.dart # Notification screen displaying order details
│   └── widgets/              # Custom reusable widgets
│       └── food_tile.dart    # Widget for displaying individual food items
│
├── viewmodels/               # ViewModel layer
│   ├── splash_view_model.dart # ViewModel for managing splash screen state
│   ├── home_view_model.dart   # ViewModel for managing home screen state
│   └── notification_view_model.dart # ViewModel for managing notification state
│
├── core/                     # Core utilities and shared resources
│   ├── theme/                # Application-wide themes and styles
│   ├── utils/                # Helper functions and utilities
│   └── constants/            # Application constants (e.g., API URLs, keys)
│
└── main.dart                 # Application entry point
