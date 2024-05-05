import 'export/export.dart';

void main() {
  //this my app starting point
  // All the import is done in export file check it
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*given the titile as Car wash and also used the ThemeData to set common colors layout also 
    the common or const colors and sizedbox and const value given core of presentation
    check it*/
      title: 'Car wash',
      theme: ThemeData(
        //buttonNavigation backgroundcolor set here
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.red,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          background: Colors.red,
        ),
        useMaterial3: true,
      ),
      /*in this root widget MaterialApp is having a widget which help to select the bottomNavigation options
       */
      home: BottomNavigatorOption(),
    );
  }
}
