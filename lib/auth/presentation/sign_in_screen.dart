import "dart:async";

import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:inksync/auth/shared/providers.dart";
import "package:inksync/core/presentation/routes/app_router.dart";

@RoutePage()
class SiginInScreen extends ConsumerWidget {
  const SiginInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Aqui debería de ir el logo que aun no tengo'),
            const SizedBox(
              height: 45,
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(authNotifierProvider.notifier).signIn(
                  (authorizationUrl) {
                    final completer = Completer<Uri>();
                    AutoRouter.of(context).push(
                      AuthorizationRoute(
                        authorizationUrl: authorizationUrl,
                        onAuthorizationCodeRedirectAttempt: (redirectedUrl) {
                          completer.complete(redirectedUrl);
                        },
                      ),
                    );
                    return completer.future;
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: const EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 16.0),
              ),
              child: const Text(
                'Login with Github',
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
