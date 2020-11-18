
import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'screens/recipes_screen.dart';

void main() => runApp(
    MyApp() 
);


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '====Recipes====',
      home: RecipesScreen(),
      // home: TestOneSignal(),
    );
  }

}

class TestOneSignal extends StatefulWidget {
  @override
  _TestOneSignalState createState() => _TestOneSignalState();
}

class _TestOneSignalState extends State<TestOneSignal> {
  // String notifyContent;
  @override
  void setState(fn) {
    super.setState(fn);
    conficOneSignal();
    initOneSignal();
    openNotification();
    OneSignal.shared.setNotificationReceivedHandler(_handleNotificationReceived);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        title: Text("One Signal"),
      ),
      
    );
  }
  void conficOneSignal() async {

    await OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);
    OneSignal.shared.init(
      "9e37aabe-1642-4172-b87f-4e3f23b33a46",
      iOSSettings: {
        OSiOSSettings.autoPrompt: false,
        OSiOSSettings.inAppLaunchUrl: false
      }

    );
    OneSignal.shared.setInFocusDisplayType(OSNotificationDisplayType.notification);
    await OneSignal.shared.promptUserForPushNotificationPermission(fallbackToSettings: true);


    
    // await OneSignal.shared.init('9e37aabe-1642-4172-b87f-4e3f23b33a46');

    // OneSignal.shared
    //     .setInFocusDisplayType(OSNotificationDisplayType.notification);
    // OneSignal.shared.setNotificationReceivedHandler((notification) {
    //   setState(() {
    //     notifyContent =
    //         notification.jsonRepresentation().replaceAll('\\n', '\n');
    //   });
    // });
  }
}


// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "flutter",
//       theme: ThemeData(primaryColor: Colors.blue),
//       home: Myhomepage(title: "tttttt"),
//     );
//   }
// }

// class Myhomepage extends StatefulWidget {
//   Myhomepage({Key key, this.title}) : super(key: key);
//   final String title;
//   @override
//   _MyhomepageState createState() => _MyhomepageState();
// }

// class _MyhomepageState extends State<Myhomepage> {
//   String notifyContent;
//   @override
//   void initState() {
//     super.initState();
//     conficOneSignal();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Onesignal"),
//       ),
//       body: Center(
//         child: Text(notifyContent),
//       ),
//     );
//   }

//   void conficOneSignal() async {
//     await OneSignal.shared.init('fce137a2-9db3-49f0-8151-1f6c0008ccd0');

//     OneSignal.shared
//         .setInFocusDisplayType(OSNotificationDisplayType.notification);
//     OneSignal.shared.setNotificationReceivedHandler((notification) {
//       setState(() {
//         notifyContent =
//             notification.jsonRepresentation().replaceAll('\\n', '\n');
//       });
//     });
//   }
// }



// OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

// OneSignal.shared.init(
//   "YOUR_ONESIGNAL_APP_ID",
//   iOSSettings: {
//     OSiOSSettings.autoPrompt: false,
//     OSiOSSettings.inAppLaunchUrl: false
//   }
// );
// OneSignal.shared.setInFocusDisplayType(OSNotificationDisplayType.notification);

// // The promptForPushNotificationsWithUserResponse function will show the iOS push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
// await OneSignal.shared.promptUserForPushNotificationPermission(fallbackToSettings: true);

Future<void> initOneSignal() async {
  //Remove this method to stop OneSignal Debugging 
  OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

  OneSignal.shared.init(
    "9e37aabe-1642-4172-b87f-4e3f23b33a46",
    iOSSettings: {
      OSiOSSettings.autoPrompt: false,
      OSiOSSettings.inAppLaunchUrl: false
    }
  );
  OneSignal.shared.setInFocusDisplayType(OSNotificationDisplayType.notification);

  // The promptForPushNotificationsWithUserResponse function will show the iOS push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
  await OneSignal.shared.promptUserForPushNotificationPermission(fallbackToSettings: true);

  
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
Future<void >openNotification() async{
   OneSignal.shared.setNotificationOpenedHandler((OSNotificationOpenedResult result) {
  // will be called whenever a notification is opened/button pressed.
});
}

void _handleNotificationReceived(OSNotification notification) {
  debugPrint("$notification");
}