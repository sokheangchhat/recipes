
import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'screens/recipes_screen.dart';

void main() {
  runApp(MyApp() );
  // initOneSignal();
  // openNotification();
  // setPermissionObserver();
  // setSubscriptionObserver();
  // setEmailSubscriptionObserver();
  OneSignal.shared.setNotificationReceivedHandler(_handleNotificationReceived);
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '====Recipes====',
      home: RecipesScreen(),
    );
  }

}

Future<void> initOneSignal() async {
  //Remove this method to stop OneSignal Debugging 
  OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

  OneSignal.shared.init(
    "0b48c937-d88f-4c6e-8195-3d6eec852b2d",
    iOSSettings: {
      OSiOSSettings.autoPrompt: false,
      OSiOSSettings.inAppLaunchUrl: false
    }
  );
}

Future<void >openNotification() async{
  OneSignal.shared.setNotificationOpenedHandler((OSNotificationOpenedResult result) {
    // will be called whenever a notification is opened/button pressed.
  });
}

Future<void >setPermissionObserver() async{
  OneSignal.shared.setPermissionObserver((OSPermissionStateChanges changes) {
  // will be called whenever the permission changes
  // (ie. user taps Allow on the permission prompt in iOS)
  });
}

Future<void >setSubscriptionObserver() async{
  OneSignal.shared.setSubscriptionObserver((OSSubscriptionStateChanges changes) {
  // will be called whenever the subscription changes 
  //(ie. user gets registered with OneSignal and gets a user ID)
  });
}

Future<void > setEmailSubscriptionObserver() async{
  OneSignal.shared.setEmailSubscriptionObserver((OSEmailSubscriptionStateChanges emailChanges) {
    // will be called whenever then user's email subscription changes
    // (ie. OneSignal.setEmail(email) is called and the user gets registered
  });
}

void _handleNotificationReceived(OSNotification notification) async{
  
  await OneSignal.shared.setInFocusDisplayType(OSNotificationDisplayType.notification);

}

// OneSignal.shared.setNotificationReceivedHandler((OSNotification notification) {
//     // will be called whenever a notification is received
// });



// OneSignal.shared.setPermissionObserver((OSPermissionStateChanges changes) {
//     // will be called whenever the permission changes
//     // (ie. user taps Allow on the permission prompt in iOS)
// });

// OneSignal.shared.setSubscriptionObserver((OSSubscriptionStateChanges changes) {
//     // will be called whenever the subscription changes 
//     //(ie. user gets registered with OneSignal and gets a user ID)
// });

// OneSignal.shared.setEmailSubscriptionObserver((OSEmailSubscriptionStateChanges emailChanges) {
//     // will be called whenever then user's email subscription changes
//     // (ie. OneSignal.setEmail(email) is called and the user gets registered
// });

// // For each of the above functions, you can also pass in a 
// // reference to a function as well:


