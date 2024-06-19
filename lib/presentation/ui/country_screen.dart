import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_clean/presentation/bloc/bloc/second_bloc.dart';
import 'package:weather_clean/presentation/bloc/country_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final countyController = TextEditingController();
  @override
  void dispose() {
    countyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final countryBloc = BlocProvider.of<CountryBloc>(context);
        //final secondBloc = BlocProvider.of<SecondBloc>(context);


    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.hello,
        ),
      ),
      body: Column(
        children: [
          BlocProvider(
            create: (context) => SecondBloc(),
            child: BlocBuilder<SecondBloc, SecondState>(
              builder: (context, state) {
                return Text("");
              },
            ),
          ),
          BlocBuilder<CountryBloc, CountryState>(
            bloc: countryBloc,
            builder: (context, state) {
              if (state is CountryInitialState) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: countyController,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20),
                            alignLabelWithHint: true,
                            labelText: "Enter city name",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          countryBloc.add(CountrySearchEvent(
                              country: countyController.text));
                        },
                        child: const Text("Submit"),
                      )
                    ],
                  ),
                );
              } else if (state is CountryLoadingState) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is CountryLoadedState) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(state.county.name),
                      Text(state.county.population.toString()),
                      Image.network(state.county.flags.first)
                      //  Text(state.county.flags.first),
                      ,
                      ElevatedButton(
                        onPressed: () {
                          countryBloc.add(CountryResetEvent());
                        },
                        child: const Text("Reset"),
                      )
                    ],
                  ),
                );
              }
              return Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Something went wrong!!"),
                  ElevatedButton(
                    onPressed: () {
                      countryBloc.add(CountryResetEvent());
                    },
                    child: const Text("Reset"),
                  )
                ],
              ));
            },
          ),
        ],
      ),
    );
  }
}
