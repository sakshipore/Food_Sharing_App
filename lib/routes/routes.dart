import 'package:food_sharing_app/routes/routes_names.dart';
import 'package:food_sharing_app/view/click_picture_screen.dart';
import 'package:food_sharing_app/view/home_screen.dart';
import 'package:food_sharing_app/view/message_screen.dart';
import 'package:food_sharing_app/view/share_picture_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: RoutesNames.homeScreen,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: RoutesNames.clickPictureScreen,
      page: () => ClickPictureScreen(),
    ),
    GetPage(
      name: RoutesNames.sharePictureScreen,
      page: () => SharePictureScreen(),
    ),
    GetPage(
      name: RoutesNames.messageScreen,
      page: () => MessageScreen(),
    ),
  ];
}
