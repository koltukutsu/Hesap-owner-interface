import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hesap_owner_interface/ui/admin_app.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'firebase_options.dart';

// ...


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp()); // TODO: admin yazisi cikiyor site acilirken, sonra normal title'a geciyor. Bunu duzelt
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const HesapAdminAppScreen();
  }
}
