part of '../di.dart';

void configureBlocDependencies() {
  getIt.registerSingleton(
    PropertyBloc(),
  );
}
