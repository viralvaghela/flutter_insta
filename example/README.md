Plugin to get details of instagram user.

Created by [Viral Vaghela](https://www.linkedin.com/in/viralv/)

## Getting Started
To get started, simply add dartpedia to  `pubspec.yaml`:
```yaml
dependencies:
  flutter_insta: 0.0.2
``` 

## Using
To use flutter_insta, first start by importing the package.
```dart
import 'package:flutter_insta/flutter_insta.dart';
```
Next, create a new FlutterInsta object and pass username inside constructor
```dart
FlutterInsta flutterInsta = new FlutterInsta("coding_boy_");
```
Get Details
```dart
print("Username : ${flutterInsta.username}");
print("Followers : ${flutterInsta.followers}");
print("Folowing : ${flutterInsta.following}");
print("Bio : ${flutterInsta.bio}");
print("Website : ${flutterInsta.website}");
print("Profile Image : ${flutterInsta.imgurl}");
<<<<<<< HEAD
```
=======
```
>>>>>>> a904ff5854d0cc75256739c86a82f101267bea08
