# pingo_learn_r1

`pingo_learn_r1` is a Flutter project aimed at providing a learning platform. This project leverages Firebase for backend services including authentication, database, and remote configuration. It's designed with a focus on clean architecture, separating concerns into data, domain, and presentation layers for scalability and maintainability.

## Getting Started

To get started with `pingo_learn_r1`, ensure you have Flutter installed on your machine. For more information on installing Flutter, see the [official documentation](https://flutter.dev/docs/get-started/install).

### Prerequisites

- Flutter SDK (version: `>=3.4.3 <4.0.0`)
- Dart SDK
- Android Studio or Visual Studio Code
- An active Firebase project

### Installation

1. Clone the repository to your local machine.
2. Navigate to the project directory and run `flutter pub get` to install the necessary dependencies.
3. Create a Firebase project and configure it for Android and iOS following the Firebase documentation.
4. Place your `google-services.json` (for Android) and `GoogleService-Info.plist` (for iOS) in their respective directories.
5. Run the project using `flutter run`.

## Architecture

The project follows a clean architecture approach, divided into three layers:

- **Data Layer**: Includes data sources and repositories. It's responsible for managing application data and abstracting the sources of the data from the rest of the app.
- **Domain Layer**: Contains use cases, entities, and repositories' interfaces. It encapsulates business logic and rules.
- **Presentation Layer**: Comprises screens, widgets, and providers. It's responsible for presenting data to the user and handling user interactions.

## Key Dependencies

- `firebase_auth`, `firebase_core`, `cloud_firestore`, `firebase_remote_config` for Firebase services.
- `dio` and `pretty_dio_logger` for networking.
- `provider` for state management.
- `flutter_screenutil` for responsive UI design.
- `retrofit` for type-safe HTTP client.

## Features

- User Authentication
- Product Listing
- Remote Configuration

## Contributing

Contributions are welcome! Please feel free to submit a pull request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
