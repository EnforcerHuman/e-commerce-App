# Flutter Candidate Task - Notifications App

## Project Overview

This Flutter application consists of two screens: a Home Screen and a Notifications Screen. The application is designed to fetch and display notifications from a JSON API, with the implementation following clean architecture principles and utilizing BLoC for state management.

### Objective

- Implement two screens based on Figma designs: Home Screen and Notifications Screen.
- Fetch and parse JSON data from a provided API endpoint.
- Utilize clean architecture for project organization and BLoC for state management.


## Getting Started

### Prerequisites

Before you begin, ensure you have the following tools installed on your development environment:

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- IDE (e.g., [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio))
- Basic understanding of Flutter, Dart, BLoC, and clean architecture.

### Project Setup

1. Clone the Repository
2. Navigate to the Project Directory
3. Install Dependencies
4. Run the Application 


**API Integration**

The application fetches notifications data from the following API endpoint
https://raw.githubusercontent.com/shabeersha/test-api/main/test-notifications.json



**Project Structure**

The project follows clean architecture principles and is organized into the following directories:

Clean Architecture Layers

core/: Contains common code used across features such as constants, utilities, and themes.
Data Layer: Handles data sources, including API services and data models.
Domain Layer: Contains business logic, including use cases and repository interfaces.
Presentation Layer: Manages the UI, state management using BLoC, and interaction with the domain layer.

**Implementation Details**

UI Implementation
The UI for both screens has been implemented based on the provided Figma design. All assets were exported and integrated as required.
   
**BLoC State Management**

BLoC is used to manage the state across the application. Each screen has its own BLoC to handle events, map them to states, and manage the data flow between the UI and business logic.


**Routing**

Navigation between the Home Screen and Notifications Screen is implemented using Flutter’s Navigator system. The routes are defined centrally to ensure clean and maintainable code.
