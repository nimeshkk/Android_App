# Campus Connect - Flutter App

Campus Connect is a collaborative group project developed using Flutter, designed to assist students in obtaining information about events, clubs and community activities, locating lost and found items, accessing bus schedules, and calculating GPA. This app facilitates seamless communication and networking among students within a campus environment, helping them enhance their overall campus experience.

## Features

- **User Authentication:** Users can sign up or log in securely to access the app's features.
- **User Profiles:** Each user can create a personalized profile with their details, interests, and profile picture.
- **Events and Activities:** Browse and join campus events, workshops, seminars, and other activities.
- **Clubs and Groups:** Users can join various clubs or interest-based groups, fostering a sense of community.
- **Bus Scheduling:** Access the campus bus schedule, plan routes, and stay informed about transportation timings.
- **GPA Calculator:** Calculate and track your GPA conveniently within the app.
- **Lost and Found:** Report and search for lost items within the campus community, facilitating their return to the rightful owners.

## Getting Started

Follow these steps to set up the Campus Connect app locally:

1. **Clone the Repository:** Clone this repository to your local machine using:
   ```
   https://github.com/nimeshkk/Android_App.git
   ```

2. **Flutter Installation:** Make sure you have Flutter installed on your system. If not, follow the installation guide at [Flutter Official Documentation](https://flutter.dev/docs/get-started/install).

3. **Dependencies:** Navigate to the project directory and install the required dependencies:
   ```
   flutter pub get
   ```

4. **Firebase Setup:** Campus Connect uses Firebase for authentication and database. Create a new project on [Firebase Console](https://console.firebase.google.com/) and replace the Firebase configuration in `lib/config/firebase_config.dart`.

5. **Run the App:** Launch the app on an emulator or physical device using:
   ```
   flutter run
   ```


## Tech Stack

- Flutter: Frontend UI framework
- Firebase: Authentication, Cloud Firestore database, Cloud Messaging
- Dart: Programming language for Flutter

