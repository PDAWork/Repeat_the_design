import 'package:coffe_shop/future/home/data/data_source/coffe_source.dart';
import 'package:coffe_shop/future/home/data/repository/cofe_repository_impl.dart';
import 'package:coffe_shop/future/home/domain/repository/coffe_repository.dart';
import 'package:coffe_shop/future/home/domain/usecase/coffe_usecase.dart';
import 'package:coffe_shop/future/home/ui/state/cubit/coffe_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //Bloc/Cubit
  sl.registerFactory(() => CoffeCubit(sl()));

  //UseCases
  sl.registerLazySingleton(() => CoffeUseCase(repository: sl()));

  //Repository

  sl.registerLazySingleton<CoffeRepository>(
      () => CoffeRepositoryImpl(coffeSource: sl()));
  sl.registerLazySingleton(() => CoffeSource());
}
