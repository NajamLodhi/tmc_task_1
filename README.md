# Marine Tank Monitor, Flutter App

This is a simple Flutter app developed as part of the IoT Developer recruitment challenge for **Tropical Marine Centre**. The app simulates a dashboard for monitoring and controlling aquatics equipment in a marine tank environment.

## Features

- Displays three metrics on the Home Screen:
  -  Water Temperature (°C)
  -  pH Level
  -  Light Status (ON/OFF)
- Toggle switch to control the Light Status
- Button to simulate feeding the fish (displays a SnackBar message)
- Responsive UI using `MediaQuery`
- Built with `setState` for basic state management

---

## How to Run the App

1. **Clone or unzip the project**  
   If using Git:
   ```bash
   git clone https://github.com/NajamLodhi/tmc_task_1
2. Navigate to the project folder
   cd tmc_task_1
3. Run the app
   flutter pub get
   flutter run



Folder Structure
lib/
│
├── main.dart                # Entry point of the app
├── screens/
│   └── dashboard_screen.dart  # Home UI and logic
├── widgets/
│   └── metric_card.dart       # Custom card widget for metrics
