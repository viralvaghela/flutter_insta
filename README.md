Simple way to get Instagram user details like prifile picture url,number of followers,following,Bio,website. 

## How to Use 
To use flutter_insta, first start by importing the package.
```dart
import 'package:flutter_insta/flutter_insta.dart';
```
Next, create a new FlutterInsta object and pass username inside constructor 
```dart
FlutterInsta flutterInsta = new FlutterInsta("coding_boy_");
await flutterInsta.getData();
```
Get Details
```dart
print("Username : ${flutterInsta.username}");
print("Followers : ${flutterInsta.followers}");
print("Folowing : ${flutterInsta.following}");
print("Bio : ${flutterInsta.bio}");
print("Website : ${flutterInsta.website}");
print("Profile Image : ${flutterInsta.imgurl}");
```
Created by [Viral Vaghela](https://www.linkedin.com/in/viralv/)
