# news_bits
This is a simple flutter application to view Daily news update on a mobile application using news api 
## How to run this project
1. Open this project directory and in your terminal window and type
`flutter pub get` (make sure you have properly installed the Flutter SDK and JDK. Refer [Flutter documentation](https://docs.flutter.dev/) for a complete guide on how to install flutter in your respective OS)


2. This will install all the dependecies used in this project.


3. Once done with this type:
    `flutter run`

4. This will run the app in your local android emulator/IOS simulator/USB connected android device.
<br/>
<br/>

## Project Structure:
The src of this project contains three folders

* [api](https://github.com/ommahale/Flutter/tree/main/news_bits/lib/api): Here all the api requests and responses are handled
* [pages](https://github.com/ommahale/Flutter/tree/main/news_bits/lib/pages): Collection of all the pages that will be visited based on the routes that are specified in [main.dart](https://github.com/ommahale/Flutter/blob/main/news_bits/lib/main.dart)
* [widgets](https://github.com/ommahale/Flutter/tree/main/news_bits/lib/widgets): Collection of all the reuseable components and widgets (Made in order to improve the further scalability of the code. It is empty for now)

## What can be added:
This project is still incomplete and the following are the improvements that can be added:
* [BLoC](https://bloclibrary.dev/#/)(Buisness Logic Component) based State Management (Intermediate)
* [Firebase authentication](https://firebase.flutter.dev/docs/overview/) (Intermediate)
* Search based results (Easy)
### In order to understabd the packages used in this project
* [flutter_html](https://pub.dev/packages/flutter_html)
* [flutter_spinkit](https://pub.dev/packages/flutter_spinkit)
* [http](https://pub.dev/packages/http)
* [intl](https://pub.dev/packages/intl)
* [url_launcher](https://pub.dev/packages/url_launcher)

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

https://user-images.githubusercontent.com/78585854/210305887-cbbf85ff-505c-4d20-a19a-0aaf051ddcd8.mp4


