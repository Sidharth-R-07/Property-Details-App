part of '../di.dart';

void configureExternalDependencies() {
  getIt
    ..registerLazySingleton<AppwriteService>(AppwriteService.new)
    ..registerLazySingleton<ImagePicker>(ImagePicker.new)
    ..registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance)
    ..registerLazySingleton<ShareService>(ShareService.new);
}
