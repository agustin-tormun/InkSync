// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    SiginInRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SiginInScreen(),
      );
    },
    AuthorizationRoute.name: (routeData) {
      final args = routeData.argsAs<AuthorizationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthorizationScreen(
          authorizationUrl: args.authorizationUrl,
          onAuthorizationCodeRedirectAttempt:
              args.onAuthorizationCodeRedirectAttempt,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [SiginInScreen]
class SiginInRoute extends PageRouteInfo<void> {
  const SiginInRoute({List<PageRouteInfo>? children})
      : super(
          SiginInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SiginInRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AuthorizationScreen]
class AuthorizationRoute extends PageRouteInfo<AuthorizationRouteArgs> {
  AuthorizationRoute({
    required Uri authorizationUrl,
    required void Function(Uri) onAuthorizationCodeRedirectAttempt,
    List<PageRouteInfo>? children,
  }) : super(
          AuthorizationRoute.name,
          args: AuthorizationRouteArgs(
            authorizationUrl: authorizationUrl,
            onAuthorizationCodeRedirectAttempt:
                onAuthorizationCodeRedirectAttempt,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthorizationRoute';

  static const PageInfo<AuthorizationRouteArgs> page =
      PageInfo<AuthorizationRouteArgs>(name);
}

class AuthorizationRouteArgs {
  const AuthorizationRouteArgs({
    required this.authorizationUrl,
    required this.onAuthorizationCodeRedirectAttempt,
  });

  final Uri authorizationUrl;

  final void Function(Uri) onAuthorizationCodeRedirectAttempt;

  @override
  String toString() {
    return 'AuthorizationRouteArgs{authorizationUrl: $authorizationUrl, onAuthorizationCodeRedirectAttempt: $onAuthorizationCodeRedirectAttempt}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
