

import 'package:property/core/constants/global.dart';
import 'package:property/data/repository/property/property_repository_impl.dart';
import 'package:property/domain/repository/property/property_repository.dart';
import 'package:property/presentation/application/property/bloc/property_bloc.dart';

part 'src/bloc_di.dart';
part 'src/external_di.dart';
part 'src/repo_di.dart';

void configureDependencies() {
  configureExternalDependencies();
  configureBlocDependencies();
  configureRepositoryDependencies();
}
