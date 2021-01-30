// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/third_party_services_module.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final thirdPartServicesModule = _$ThirdPartServicesModule();
  gh.lazySingleton<NavigationService>(
      () => thirdPartServicesModule.navigationService);
  return get;
}

class _$ThirdPartServicesModule extends ThirdPartServicesModule {
  @override
  NavigationService get navigationService => NavigationService();
}
