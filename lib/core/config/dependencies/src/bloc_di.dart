part of '../di.dart';

void configureBlocDependencies() {
  getIt.registerSingleton(
    PropertyBloc(getIt<PropertyRepository>(), getIt<ShareService>()),
  );
}
