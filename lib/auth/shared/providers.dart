import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:inksync/auth/application/auth_notifier.dart';
import 'package:inksync/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:inksync/auth/infrastructure/credentials_storage/secure_credentials.dart';
import 'package:inksync/auth/infrastructure/github_authenticator.dart';
import 'package:riverpod/riverpod.dart';

final flutterSecureStorageProvider =
    Provider((ref) => const FlutterSecureStorage());

final dioProvider = Provider((ref) => Dio());

final credentialsStorageProvider = Provider<CredentialStorage>(
  (ref) => SecureCredentialsStorage(ref.watch(flutterSecureStorageProvider)),
);

final githubAuthenticatorProvider = Provider((ref) => GithubAuthenticator(
      ref.watch(credentialsStorageProvider),
      ref.watch(dioProvider),
    ));

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
    (ref) => AuthNotifier(ref.watch(githubAuthenticatorProvider)));
