import 'package:auto_route/auto_route.dart';
import 'package:inksync/core/presentation/screens.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(path: '/sign-in', page: SiginInRoute.page),
        AutoRoute(path: '/auth', page: AuthorizationRoute.page),
        AutoRoute(path: '/home', page: HomeRoute.page),
      ];
}
