import 'package:car_wash/export/export.dart';

/* So from the material app the widget is navigate to 
this widget which is responsible for the valueNotifier
the default value is given as 0 */
ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int index, _) {
        return BottomNavigationBar(
          //BottomnavigationBar currentIndex is set to valueNotifier index

          currentIndex: index,
          // in this BottomnavigationBar onTap function is reset the changing index to valueNotifier
          onTap: (index) {
            indexChangeNotifier.value = index;
          },
          //the type and and default colors were given to the bottonNavigator
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedItemColor: kWhite,
          unselectedItemColor: kGrey,
          selectedIconTheme: const IconThemeData(
            color: kWhite,
          ),
          unselectedIconTheme: const IconThemeData(
            color: kGrey,
          ),
          items: const [
            // also in the ButtomNavigator list items  given ButtomNavigationBarItem which is default fuction of BottomNavigation
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "watch",
            ),
          ],
        );
      },
    );
  }
}
