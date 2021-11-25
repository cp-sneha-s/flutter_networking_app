import 'package:data_networking/Screens/home_screen_view_model.dart';
import 'package:data_networking/model/api_response_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Data Networking'),
          ),
          body: Center(
            child: Consumer<HomeScreenViewModel>(
                builder: (context, viewModel, child) {
              APIResponseModel apiResponseModel = viewModel.apiResponseModel;
              return viewModel.isLoading
                  ? CircularProgressIndicator(backgroundColor: Colors.blue)
                  : Text(
                      'Total Cases : ${apiResponseModel.cases}\n'
                      'Today\'s Cases : ${apiResponseModel.todayCases}\n'
                      'Total Death : ${apiResponseModel.deaths}\n'
                      'Today\'s Cases : ${apiResponseModel.todayDeaths}\n'
                      'Total Recovered : ${apiResponseModel.recovered}\n'
                      'Active Cases : ${apiResponseModel.active}\n'
                      'Critical Cases : ${apiResponseModel.critical}\n'
                      'Cases per million : ${apiResponseModel.casesPerOneMillion}\n'
                      'deaths per million : ${apiResponseModel.deathsPerOneMillion}\n'
                      'Total Tests done : ${apiResponseModel.tests}\n'
                      'Tests per million  : ${apiResponseModel.testsPerOneMillion}\n'
                      'Affected countries : ${apiResponseModel.affectedCountries}\n',
                      style: const TextStyle(fontSize: 18),
                    );
            }),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Provider.of<HomeScreenViewModel>(context, listen: false)
                  .updateInfo();
            },
            child: Icon(Icons.cloud_download),
            tooltip: 'Get data from API',
          ),
        ),
      ),
    );
  }
}
