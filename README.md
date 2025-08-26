# Black Market
[![Ask DeepWiki](https://devin.ai/assets/askdeepwiki.png)](https://deepwiki.com/MahmoudDabour1/black_market)

Black Market is a comprehensive Flutter application designed to provide real-time price tracking for currencies and gold. Users can monitor exchange rates from both official banks and the black market, as well as view prices for various gold karats, ingots, and coins.

## Features

- **User Authentication**: Secure sign-up, login, and password recovery functionality.
- **Currency Tracking**: View and compare currency prices from various banks and the parallel (black) market.
- **Gold Prices**: Get up-to-date prices for different gold karats, ingots, and coins from various companies.
- **Interactive Charts**: Visualize historical price data for currencies with interactive charts.
- **Favorites**: Save preferred banks and currencies for quick access.
- **Profile Management**: View and manage user profile information.
- **Customizable Settings**:
    - Select the primary currency for the app.
    - Arrange currencies and banks in a preferred order.
    - Manage notification preferences for currencies, gold, and news.

## Architecture

This project is built using the Flutter framework and follows Clean Architecture principles, promoting a separation of concerns and maintainability.

-   **State Management**: [flutter_bloc](https://pub.dev/packages/flutter_bloc) is used for predictable state management across the application.
-   **Networking**: [Dio](https://pub.dev/packages/dio) and [Retrofit](https://pub.dev/packages/retrofit) are used for making type-safe HTTP requests to the API.
-   **Local Storage**: [Hive](https://pub.dev/packages/hive) is utilized for efficient local data caching, enabling offline access and reducing network requests.
-   **Dependency Injection**: [GetIt](https://pub.dev/packages/get_it) is used for decoupling dependencies and managing services.
-   **Code Generation**: [freezed](https://pub.dev/packages/freezed) for data models and states, and [json_serializable](https://pub.dev/packages/json_serializable) for JSON serialization.

## Project ScreenShots
## 📱 Screenshots

<p float="left">
  <img src="https://github.com/user-attachments/assets/52aff9bc-701b-4e86-8b21-c75be451b033" width="45%" />
  <img src="https://github.com/user-attachments/assets/6ed42b02-245a-4446-8465-8f253341d926" width="45%" />
</p>

<p float="left">
  <img src="https://github.com/user-attachments/assets/2c1edc5c-99bf-43a9-92a6-0a4c6a155adf" width="45%" />
  <img src="https://github.com/user-attachments/assets/d6305c93-0631-433c-ab7c-93aafe2e2022" width="45%" />
</p>

<p float="left">
  <img src="https://github.com/user-attachments/assets/3f0ae0eb-edd7-4ef9-8a53-48dfd54a9796" width="45%" />
  <img src="https://github.com/user-attachments/assets/2b4bdd6a-d17c-464e-8eef-effb1b686979" width="45%" />

</p>
<p float="left">
  <img src="https://github.com/user-attachments/assets/6d16f8a5-dc5e-4680-96c2-9b8df0c3512d" width="45%" />
  <img src="https://github.com/user-attachments/assets/10b58ac3-2805-44a1-a770-f05f7191cb5d" width="45%" />

</p>
<p float="left">
  <img src="https://github.com/user-attachments/assets/6fe531f6-baec-4760-9852-16dc1cb13c7b" width="45%" />
</p>
<p float="left">
  <img src="https://github.com/user-attachments/assets/693849bf-5a8d-417e-90cc-14f60323df5f" width="45%" />
  <img src="https://github.com/user-attachments/assets/c115a925-e943-49d3-afec-c25c05d87917" width="45%" />
</p>

</p>
<p float="left">
  <img src="https://github.com/user-attachments/assets/a63bdb36-383b-47a9-8d94-56e5b8b815fe" width="45%" />
  <img src="https://github.com/user-attachments/assets/fb17c745-97e3-4420-9e7d-17daaf4ce845" width="45%" />
</p>

</p>
<p float="left">
  <img src="https://github.com/user-attachments/assets/fd0a50fb-a3a6-4758-81ab-2dbf35da98bf" width="45%" />
  <img src="https://github.com/user-attachments/assets/4d8b8a46-9a04-4be5-9936-9f600ff39c5f" width="45%" />
</p>
</p>
<p float="left">
  <img src="https://github.com/user-attachments/assets/1a04d0bb-7e4f-4183-a608-f41129ccda58" width="45%" />
  <img src="https://github.com/user-attachments/assets/2d650d98-799e-4a0f-ac7a-db513a3fe139" width="45%" />
</p>
</p>
<p float="left">
  <img src="https://github.com/user-attachments/assets/c70e15f3-338d-4e0a-8eb2-79c72866ad97" width="45%" />
  <img src="https://github.com/user-attachments/assets/3d017dd3-07b8-4ea0-8c52-71805ae53197" width="45%" />
</p>

</p>
<p float="left">
  <img src="https://github.com/user-attachments/assets/d5d65568-a1ca-47cc-99e7-84b55a2c4017" width="45%" />
  <img src="https://github.com/user-attachments/assets/bf405de0-d114-47b6-9e66-1cf9cae22bbc" width="45%" />
</p>
</p>
<p float="left">
  <img src="https://github.com/user-attachments/assets/70ae4f78-a5be-468a-9b11-7c076e86eb85" width="45%" />
  <img src="https://github.com/user-attachments/assets/ec7ea2b4-099a-4bef-a6c8-0354c65f1707" width="45%" />
</p>
</p>
<p float="left">
  <img src="https://github.com/user-attachments/assets/1d516253-6840-4546-955e-5426ca366d2c" width="45%" />
</p>



## Project Structure

The project is organized into a feature-first directory structure to ensure modularity and scalability.

```
lib/
├── core/               # Shared logic, widgets, and utilities
│   ├── di/             # Dependency injection setup
│   ├── helpers/        # Helper classes and functions
│   ├── networking/     # API services, Dio setup, error handling
│   ├── routing/        # App router and route definitions
│   └── theming/        # App-wide colors, styles, and assets
│
└── features/           # Feature-based modules
    ├── auth/           # Authentication (login, register, etc.)
    ├── gold/           # Gold price tracking
    ├── home/           # Main screen with currency and bank prices
    ├── favorites/      # User's favorite items
    ├── layout/         # Bottom navigation bar structure
    ├── profile/        # User profile and settings access
    ├── settings/       # App settings screens
    └── splash/         # Splash screen
```

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

-   Flutter SDK: Version `^3.6.1` or higher.
-   Dart SDK: Version `^3.6.1` or higher.

### Installation

1.  **Clone the repository:**
    ```sh
    git clone https://github.com/mahmouddabour1/black_market.git
    cd black_market
    ```
2.  **Install dependencies:**
    ```sh
    flutter pub get
    ```
3.  **Generate required files:**
    The project uses code generation. Run the following command to generate the necessary files:
    ```sh
    flutter pub run build_runner build --delete-conflicting-outputs
    ```
4.  **Run the application:**
    You can run the application in either development or production mode.
    -   **Development mode (with DevicePreview):**
        ```sh
        flutter run -t lib/main_development.dart
        ```
    -   **Production mode:**
        ```sh
        flutter run -t lib/main_production.dart
