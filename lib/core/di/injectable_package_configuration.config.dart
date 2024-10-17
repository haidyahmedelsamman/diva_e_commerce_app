// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:diva_e_commerce_app/features/profile/data/repositories/theme_mode_pref_repository.dart'
    as _i510;
import 'package:diva_e_commerce_app/features/profile/logic/theme_switching_cubit/theme_switching_cubit.dart'
    as _i345;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i510.ThemeModePrefRepository>(
        () => _i510.ThemeModePrefRepository());
    gh.lazySingleton<_i345.ThemeSwitchingCubit>(
        () => _i345.ThemeSwitchingCubit(gh<_i510.ThemeModePrefRepository>()));
    return this;
  }
}
