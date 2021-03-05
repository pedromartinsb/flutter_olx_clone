import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:xlo_mobx/screens/base/base_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  runApp(MyApp());  
}

Future<void> initializeParse() async {
  await Parse().initialize(
    'x2L8WpBEJa91l2Rr8JwJSjgRDVmY8v9eCN3q3cIt', 
    'https://parseapi.back4app.com/',
    clientKey: 'wrhE7MJ3in6pvbMWn6K0910G7cKiUqXF6kFm3MOp',
    autoSendSessionId: true,
    debug: true
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XLO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BaseScreen(),
    );
  }
}
