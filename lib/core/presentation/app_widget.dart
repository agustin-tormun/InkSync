import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inksync/auth/application/auth_notifier.dart';
import 'package:inksync/auth/shared/providers.dart';
import 'package:inksync/core/presentation/routes/app_router.dart';

final initializationProvider = FutureProvider((ref) async {
  final authNotifier = ref.read(authNotifierProvider.notifier);
  await authNotifier.checkAndUpdateAuthStatus();
});

class AppWidget extends ConsumerWidget {
  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(initializationProvider, (_, __) {});
    ref.listen<AuthState>(authNotifierProvider, (prev, next) {
      next.maybeMap(
          orElse: () {},
          authenticated: (_) {
            appRouter.pushAndPopUntil(const HomeRoute(),
                predicate: (route) => false);
          },
          unauthenticated: (_) {
            appRouter.pushAndPopUntil(const SiginInRoute(),
                predicate: (route) => false);
          });
    });
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'InkSync',
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
