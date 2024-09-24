# BW-One-E-commerce-Ui-Api

This Flutter application consists of two screens—a Home screen and a Notifications screen—based on design mockups from Figma. The app fetches JSON data from an API endpoint and displays it on the Notifications screen. The app is designed for efficient performance by optionally using isolates for JSON parsing.

## Project Overview

### Features
- **Home Screen**: Displays the main UI as per the Figma design.
- **Notifications Screen**: Fetches and displays notification data from an API.
- **Isolates for JSON Parsing**: Utilizes Dart isolates for efficient background processing.
- **Routing**: Implements navigation between the Home and Notifications screens.

## Getting Started

### Prerequisites
- [Flutter](https://flutter.dev/docs/get-started/install) installed on your local machine.
- [Dart](https://dart.dev/get-dart) installed.
- API endpoint for fetching notification data.

### Installation
1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/BW-One-E-commerce-Ui-Api.git
    ```
2. Navigate to the project directory:
    ```bash
    cd BW-One-E-commerce-Ui-Api
    ```
3. Install dependencies:
    ```bash
    flutter pub get
    ```

### Running the Application
To run the application on an emulator or a physical device, use:
```bash
flutter run
