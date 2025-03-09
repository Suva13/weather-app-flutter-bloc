# **Weather App with Flutter and Flutter Bloc**

A simple weather app built using **Flutter** and **Flutter Bloc** for state management. This app fetches weather data from the OpenWeatherMap API and displays it in a clean and intuitive UI. It's a great project for learning Flutter, Bloc state management, and API integration.

---

## **Features**
- Fetch weather data by city name.
- Display city name, temperature, and weather condition.
- Clean and responsive UI.
- Built using **Flutter Bloc** for state management.
- Uses **OpenWeatherMap API** for weather data.

---

## **Screenshots**
<div align="center">
  <img src="https://github.com/user-attachments/assets/bec5e378-0846-4b56-a8f1-91720d5572c4" width="30%" />
  <img src="https://github.com/user-attachments/assets/aa3c9c4d-6f7f-49d2-9ecf-547f8743196b" width="30%" />
  <img src="https://github.com/user-attachments/assets/3131a79f-a27a-4eba-8807-ebea15c51c67" width="30%" />
</div>
---

## **Getting Started**

### **Prerequisites**
- Flutter SDK installed on your machine. If not, follow the [official Flutter installation guide](https://flutter.dev/docs/get-started/install).
- An API key from [OpenWeatherMap](https://openweathermap.org/api). (Free tier is sufficient.)

### **Installation**
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/weather-app-flutter-bloc.git
   cd weather-app-flutter-bloc
   ```

2. Add your OpenWeatherMap API key:
   - Open `lib/repositories/weather_repository.dart`.
   - Replace `YOUR_API_KEY` with your actual API key.

3. Install dependencies:
   ```bash
   flutter pub get
   ```

4. Run the app:
   ```bash
   flutter run
   ```

---

## **Folder Structure**
```
lib/
├── blocs/           # Bloc files for state management
├── models/          # Data models
├── repositories/    # API and data handling
├── screens/         # App screens
├── widgets/         # Reusable UI components
└── main.dart        # App entry point
```

---

## **How It Works**
1. The user enters a city name in the input field.
2. The app sends a request to the OpenWeatherMap API using the `WeatherRepository`.
3. The `WeatherBloc` manages the state and updates the UI based on the API response.
4. The weather data (city name, temperature, and condition) is displayed on the screen.

---

## **Dependencies**
- [flutter_bloc](https://pub.dev/packages/flutter_bloc): For state management.
- [http](https://pub.dev/packages/http): For making API requests.
- [equatable](https://pub.dev/packages/equatable): For simplifying equality comparisons.
  
---

## **License**
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## **Acknowledgements**
- [OpenWeatherMap](https://openweathermap.org/api) for providing the weather data API.
- [Flutter Bloc](https://bloclibrary.dev/) for the state management library.

---

## **Connect with Me**
- GitHub: https://github.com/Suva13
- LinkedIn: https://www.linkedin.com/in/suvagiri

---

*(Replace placeholders like `YOUR_API_KEY` with your actual information.)*

---
