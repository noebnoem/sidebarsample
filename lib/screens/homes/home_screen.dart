import 'package:flutter/material.dart';
import 'package:sidebarsample/xcore.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>{
  final sidebarController = SidebarXController(selectedIndex: 0, extended: true);
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     key: _key,
     backgroundColor: Colors.white,
      appBar: AppBar(
         backgroundColor: AppColor.canvasColor,
        title: Text(_getTitleByIndex(sidebarController.selectedIndex)),
         leading: IconButton(
           onPressed: () {
           if(kIsWeb){
               sidebarController.setExtended(true);
             }
             _key.currentState?.openDrawer();
           },
           icon: const Icon(Icons.menu_rounded),
         ),
       ),
     drawer: SideBarDrawerWidget(controller: sidebarController),
     body: DrawerContent(controller: sidebarController)
   );
  }
}
String _getTitleByIndex(int index) {
  switch (index) {
    case 0:
      return 'Home';
    case 1:
      return 'Search';
    case 2:
      return 'People';
    case 3:
      return 'Favorites';
    case 4:
      return 'Custom iconWidget';
    case 5:
      return 'Profile';
    case 6:
      return 'Settings';
    default:
      return 'Not found page';
  }
}