import 'package:epic_everyday/bindings/auth_screen_binding.dart';
import 'package:epic_everyday/bindings/cart_binding.dart';
import 'package:epic_everyday/bindings/favorite_binding.dart';
import 'package:epic_everyday/bindings/home_binding.dart';
import 'package:epic_everyday/bindings/item_four_binding.dart';
import 'package:epic_everyday/bindings/item_one_binding.dart';
import 'package:epic_everyday/bindings/item_three_binding.dart';
import 'package:epic_everyday/bindings/item_two_binding.dart';
import 'package:epic_everyday/bindings/login_binding.dart';
import 'package:epic_everyday/bindings/register_binding.dart';
import 'package:epic_everyday/bindings/welcome_page_binding.dart';
import 'package:epic_everyday/pages/auth_screen.dart';
import 'package:epic_everyday/pages/cart.dart';
import 'package:epic_everyday/pages/favorite.dart';
import 'package:epic_everyday/pages/home.dart';
import 'package:epic_everyday/pages/item_four.dart';
import 'package:epic_everyday/pages/item_one.dart';
import 'package:epic_everyday/pages/item_three.dart';
import 'package:epic_everyday/pages/register.dart';
import 'package:epic_everyday/pages/welcome_page.dart';
import 'package:epic_everyday/routes/routes.dart';
import 'package:get/get.dart';
import '../pages/item_two.dart';
import '../pages/login.dart';

class AppRoutes
{
  static String INITIAL_ROUTE = Routes.WELCOME_PAGE;

  static final navigation = [

    GetPage(
        name: Routes.WELCOME_PAGE,
        page: () => WelcomePage(),
        binding: WelcomePageBinding()
    ),
    GetPage(
        name: Routes.AUTH_SCREEN,
        page: () => AuthScreen(),
        binding: AuthScreenBinding()
    ),
    GetPage(
        name: Routes.LOGIN,
        page: () => Login(),
        binding: LoginBinding()
    ),
    GetPage(
        name: Routes.REGISTER,
        page: () => Register(),
        binding: RegisterBinding()
    ),
    GetPage(
        name: Routes.HOME,
        page: () => Home(),
        binding: HomeBinding()
    ),
    GetPage(
        name: Routes.ITEM_ONE,
        page: () => ItemOne(),
        binding: ItemOneBinding()
    ),
    GetPage(
        name: Routes.ITEM_TWO,
        page: () => ItemTwo(),
        binding: ItemTwoBinding()
    ),
    GetPage(
        name: Routes.ITEM_THREE,
        page: () => ItemThree(),
        binding: ItemThreeBinding()
    ),
    GetPage(
        name: Routes.ITEM_FOUR,
        page: () => ItemFour(),
        binding: ItemFourBinding()
    ),
    GetPage(
        name: Routes.CART,
        page: () => Cart(),
        binding: CartBinding()
    ),
    GetPage(
        name: Routes.FAVORITE,
        page: () => Favorite(),
        binding: FavoriteBinding()
    ),

  ];
}