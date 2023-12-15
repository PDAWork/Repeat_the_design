import 'package:coffe_shop/future/auth/ui/presentation/auth.dart';
import 'package:coffe_shop/future/home/domain/entity/coffe_entity.dart';
import 'package:coffe_shop/future/home/domain/usecase/coffe_usecase.dart';
import 'package:coffe_shop/future/home/ui/presentation/home.dart';
import 'package:coffe_shop/future/home/ui/presentation/item_coffe.dart';
import 'package:coffe_shop/future/home/ui/state/cubit/coffe_cubit.dart';
import 'package:coffe_shop/future/splash_screen/ui/presentation/splash_creen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'sevice_locator.dart';

abstract final class Nav {
  static const String auth = "/";
  static const String splashScreen = "/splash_screen";
  static const String home = "/home";
  static const String itemCoffe = "itemCoffe";

  static final router = GoRouter(
    initialLocation: auth,
    routes: [
      GoRoute(
        path: auth,
        builder: (context, state) => const Auth(),
      ),
      GoRoute(
        path: splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        name: "home",
        path: home,
        builder: (context, state) => BlocProvider(
          create: (context) => sl<CoffeCubit>(),
          child: const Home(),
        ),
        routes: [
          GoRoute(
            name: 'itemCoffe',
            path: itemCoffe,
            builder: (context, state) {
              final coffeItem = (state.extra == null
                  ? CoffeEntity(name: 'name', iconPath: 'latte.png', cost: 0)
                  : state.extra as CoffeEntity);

              return ItemCoffe(
                cost: coffeItem.cost,
                name: coffeItem.name,
                iconPath: coffeItem.iconPath,
              );
            },
          )
        ],
      ),
    ],
  );
}
