import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/core/model/my_app_user.dart';
import 'package:shop_app/core/service/firebase_service.dart';
import 'package:shop_app/core/service/i_auth_service.dart';
import 'package:shop_app/core/widgets/auth_widget_builder.dart';
import 'package:shop_app/firebase_options.dart';
import 'package:shop_app/routs.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<IAuthService>(
          create: (_) => AuthService(),
        ),
      ],
      child: AuthWidgetBuilder(
        onPageBuilder: (context, AsyncSnapshot<MyAppUser> snapshot) =>
            MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: theme(),
          //home: SplashScreen(),
          initialRoute: SplashScreen.routeName,
          routes: routes,
        ),
      ),
    );
  }
}
