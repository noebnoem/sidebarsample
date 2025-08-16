import 'package:flutter/material.dart';
import 'package:sidebarsample/xcore.dart';
import 'package:sidebarx/sidebarx.dart';

class SideBarDrawerWidget extends StatelessWidget{
  const SideBarDrawerWidget({super.key, required this.controller});

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
   return SidebarX(controller: controller,
     toggleButtonBuilder: (context, controller) => SizedBox.shrink(),
       theme: SidebarXTheme(
         decoration: BoxDecoration(
           color: AppColor.canvasColor,
           borderRadius: BorderRadius.circular(20),
         ),
         hoverColor: AppColor.scaffoldBackgroundColor,
         textStyle: TextStyle(color: Colors.white.withAlpha(179)),
         selectedTextStyle: const TextStyle(color: Colors.white),
         hoverTextStyle: const TextStyle(
           color: Colors.white,
           fontWeight: FontWeight.w500,
         ),
         itemTextPadding: const EdgeInsets.only(left: 30),
         selectedItemTextPadding: const EdgeInsets.only(left: 30),
         itemDecoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           border: Border.all(color: AppColor.canvasColor),
         ),
         selectedItemDecoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           border: Border.all(
             color: AppColor.actionColor.withAlpha(93),
           ),
           gradient: const LinearGradient(
             colors: [AppColor.accentCanvasColor, AppColor.canvasColor],
           ),
           boxShadow: [
             BoxShadow(
               color: Colors.black.withAlpha(71),
               blurRadius: 30,
             )
           ],
         ),
         iconTheme: IconThemeData(
           color: Colors.white.withOpacity(0.7),
           size: 20,
         ),
         selectedIconTheme: const IconThemeData(
           color: Colors.white,
           size: 20,
         ),
       ),
     extendedTheme: const SidebarXTheme(
       width: 200,
       decoration: BoxDecoration(
         color: AppColor.canvasColor,
       ),
     ),
     footerDivider: AppColor.divider,
     headerBuilder: (context, extended) {
       return SizedBox(
         height: 100,
         child: Padding(
           padding: const EdgeInsets.all(16.0),
           child: Image.asset(ConstValues.profile),
         ),
       );
     },
     items: [
       SidebarXItem(
         icon: Icons.home,
         label: 'Home',
         onTap: () {
           debugPrint('Home');
         },
       ),
       const SidebarXItem(
         icon: Icons.search,
         label: 'Search',
       ),
       const SidebarXItem(
         icon: Icons.people,
         label: 'People',
       ),
       SidebarXItem(
         icon: Icons.favorite,
         label: 'Favorites',
         selectable: false,
       ),
       const SidebarXItem(
         iconWidget: FlutterLogo(size: 20),
         label: 'Flutter',
       ),
     ],
   );
  }

}