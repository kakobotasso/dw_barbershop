# dw_barbershop

A Flutter project made during 6 classes from `Imersão Dart Week 11` from [Academia do Flutter](https://novo.academiadoflutter.com.br/).

## Getting Started

* [Download project and enter the folder](#download-project-and-enter-the-folder)
* [Download dependencies](#download-dependencies)
* [Start backend server](#start-backend-server)
* [Run the app](#run-the-app)
* Have fun :)

### Stack

* [Riverpod](https://pub.dev/packages/flutter_riverpod)
* [AsyncState](https://pub.dev/packages/asyncstate)
* [Loading Animation Widget](https://pub.dev/packages/loading_animation_widget)
* [dio](https://pub.dev/packages/dio)
* [Validatorless](https://pub.dev/packages/validatorless)
* [Top Snackbar Flutter](https://pub.dev/packages/top_snackbar_flutter)
* [Table Calendar](https://pub.dev/packages/table_calendar)
* [intl](https://pub.dev/packages/intl)
* [Syncfusion Flutter Calendar](https://pub.dev/packages/syncfusion_flutter_calendar)
* [JSON Rest Server](https://pub.dev/packages/json_rest_server)

#### Download project and enter the folder
```
git clone https://github.com/kakobotasso/dw_barbershop.git
cd dw_barbershop
```

#### Download dependencies
```
flutter pub get
```

#### Start backend server
We're using JSON Rest Server as backend and `database.json` as our database
```
dart pub global activate json_rest_server
cd server
cp database-sample.json database.json
json-rest-server run
```

#### Run the app
```
flutter run
```
