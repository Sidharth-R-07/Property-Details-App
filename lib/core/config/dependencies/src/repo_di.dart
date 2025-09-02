part of '../di.dart';

//FOR REPOSITORY DI Config

void configureRepositoryDependencies() {
  getIt.registerSingleton<PropertyRepository>(PropertyRepositoryImpl());
}
