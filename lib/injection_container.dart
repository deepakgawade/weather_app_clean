import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_clean/data/datasources/remote_data_resources.dart';
import 'package:weather_clean/data/repositories/country_repository_impl.dart';
import 'package:weather_clean/domain/repositories/country_repository.dart';
import 'package:weather_clean/domain/usecases/get_country_info.dart';
import 'package:weather_clean/presentation/bloc/country_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {


  // Dio
sl.registerFactory<Dio>(() => Dio()); 
  // Dependencies
  sl.registerSingleton<RemoteDataSouces>(GeCountryInfo(dio: sl()));

  sl.registerSingleton<CountryRepository>(
    CountryRepositoryImpl(remoteDataSouces: sl())
  );
  
  //UseCases


  sl.registerSingleton<GetCountryInfomation>(
    GetCountryInfomation(weatherRepository: sl())
  );

  // sl.registerSingleton<SaveArticleUseCase>(
  //   SaveArticleUseCase(sl())
  // );
  
  // sl.registerSingleton<RemoveArticleUseCase>(
  //   RemoveArticleUseCase(sl())
  // );


  //Blocs
  sl.registerFactory<CountryBloc>(
    ()=> CountryBloc(sl())
  );

  // sl.registerFactory<LocalArticleBloc>(
  //   ()=> LocalArticleBloc(sl(),sl(),sl())
  // );


}