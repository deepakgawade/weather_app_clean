import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_clean/domain/entities/country.dart';
import 'package:weather_clean/domain/repositories/country_repository.dart';

import '../../domain/usecases/get_country_info.dart';

part 'country_event.dart';
part 'country_state.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  final GetCountryInfomation countryRepository;
  CountryBloc(this.countryRepository) : super(CountryInitialState()) {
    on<CountrySearchEvent>(getCountryInfo);
    on<CountryResetEvent>(reset);
  }

  void getCountryInfo(CountrySearchEvent event,Emitter<CountryState> emit)async{
emit(CountryLoadingState());
  final result= await countryRepository.execute(event.country);

if(result.isRight()){
  emit(CountryLoadedState(county: result.getOrElse(() => const Country(name: "India", common: "India", currencies: "Rupees", capital: "Delhi", capitalLocation: "", countryLocation: "", borders: const [" "], area: 23445.455, population: 0, flags: const[""], coatOfArms: ""))));
}else{
  emit(CountryFailureState());
}

}

  void reset(CountryResetEvent event, Emitter<CountryState> emit){
emit(CountryInitialState());
  }
}


