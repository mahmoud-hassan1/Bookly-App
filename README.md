# Bookly App

Bookly is a mobile application built using Flutter that allows users to view free books related to programming. The application is designed with a clean architecture, utilizing the MVVM (Model-View-ViewModel) pattern and the BLoC (Business Logic Component) using the Flutter Cubit package.

## Features

- View Free Programming Books: Browse a collection of free books related to various programming topics.
- Book Details: View detailed information about each book.
- MVVM Pattern: Utilizes the MVVM pattern to separate concerns and facilitate easier UI updates.
- BLoC with Flutter Cubit: Manages state and business logic using the BLoC pattern with the Flutter Cubit package.

## Installation

1. Clone the repository:

   git clone https://github.com/yourusername/bookly.git
  
2. Install dependencies:

   flutter pub get

3. Run the app:
   
   flutter run 

# Project Structure
lib/
|-- data/
|   |-- models/
|   |-- repositories/
|
|-- presentation/
|   |-- blocs/
|   |-- views/
|   | | -- widgets/
|
|-- core/
|   |-- widgets/
|   |-- utils/
|   `-- errors/
|
|-- main.dart

## Explanation

  - data/: Contains the data layer of the application, including models, repositories, and data sources.
  - domain/: Contains the domain layer, which includes entities, repositories interfaces, and use cases.
  - presentation/: Contains the presentation layer, which includes blocs (using Cubit), views, viewmodels, and widgets.
  - core/: Contains core functionalities, constants, utilities, and error handling.
  - main.dart: Entry point of the application.

## Dependencies
  1. cupertino_icons: ^1.0.6
  2. get: ^4.6.6
  3. flutter_svg: ^2.0.10+1
  4. google_fonts: ^6.2.1
  5. dartz: ^0.10.1
  6. dio: ^5.4.3+1
  7. bloc: ^8.1.4
  8. flutter_bloc: ^8.1.6
  9. get_it: ^7.7.0
  10. cached_network_image: ^3.3.1
  11. url_launcher: ^6.3.0
  ### Author: Mahmoud Hassan
  ### Email: mahmoudhassan10191019@gmail.com
  ### GitHub: mahmoud-hassan1
