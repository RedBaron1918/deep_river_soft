# DeepRiver Soft

## Key Features

* **Real-Time Data:** Displays 10,000+ live matches with continuously updating odds.
* **Performant Scrolling:** Efficient list virtualization ensures smooth scrolling and minimal memory usage.
* **Interactive Betting Odds:** Users can select odds, with selections highlighted and persisted.
* **Persistent State:** Selected odds are saved locally and automatically restored on app restart.
* **Filterable Content:** Matches can be filtered by sport type via the header.

## Architecture

This project follows a layered architecture inspired by Clean Architecture principles, structured into clearly separated layers:

```
lib/
├── core/
│   ├── theme/
│   │   ├── app_colors.dart
│   │   └── app_theme.dart
│   └── util/
│       ├── extensions.dart
│       └── mock_web_socket_client.dart
├── src/
│   ├── bloc/
│   │   ├── match_bloc.dart
│   │   ├── match_bloc.freezed.dart
│   │   ├── match_event.dart
│   │   └── match_state.dart
│   ├── data/
│   │   ├── data_sources/
│   │   │   ├── match_local_data_source.dart
│   │   │   └── match_remote_data_source.dart
│   │   ├── models/
│   │   │   ├── match_model.dart
│   │   │   ├── odds_model.dart
│   │   │   └── sport_model.dart
│   │   └── repositories/
│   │       └── match_repository.dart
│   ├── ui/
│   │   ├── screens/
│   │   │   ├── home_screen.dart
│   │   │   └── splash_screen.dart
│   │   ├── widgets/
│   │   │   ├── custom_app_bar.dart
│   │   │   ├── custom_card.dart
│   │   │   └── odd_button.dart
│   │   └── app.dart
└── main.dart
packages/
 └── local_storage/
```

### Layer Breakdown

* **Core Layer (`core/`):** Contains cross-cutting concerns such as global themes and utilities.

* **Data Layer (`src/data/`):** Handles data retrieval and persistence:

  * **Data Sources:** Remote API calls and local storage interactions.
  * **Models:** Typed data representations like `MatchModel` and `OddsModel`.
  * **Repositories:** Abstract data access logic.

* **Bloc Layer (`src/bloc/`):** Manages business logic using the BLoC pattern, ensuring clear and predictable state transitions.

* **UI Layer (`src/ui/`):** Contains all user interface elements:

  * **Screens:** Full views like `HomeScreen` and `SplashScreen`.
  * **Widgets:** Reusable UI components like `CustomAppBar` and `OddButton`.

### Key Architectural Decisions

**State Management:**

* Uses the **BLoC pattern** (`flutter_bloc`) for structured and testable state management.
* Separates **events** and **states** for clearer business logic flows.
* The **freezed** package is used for immutable classes and exhaustive switch-cases, reducing boilerplate.

**UI Composition:**

* Modular UI split into screens and widgets for maximum reusability and maintainability.
* Centralized themes and styling under `core/theme/` for consistency across the app.

**Performance Optimizations:**
* Implements lazy loading using SliverList.builder that helps with performance.
* Separates data sources for easy switching between local and remote data sources.
* Modular architecture minimizes unnecessary rebuilds and enhances code organization.

## How to Run the App

1. **Clone the Repository**

   ```bash
   git clone <your-repo-url>
   cd <your-repo-name>
   ```

2. **Install Dependencies**
   Make sure you have Flutter SDK installed. Run:

   ```bash
   flutter pub get
   ```

3. **Run the App**
   Connect a device or start an emulator, then run:

   ```bash
   flutter run
   ```
