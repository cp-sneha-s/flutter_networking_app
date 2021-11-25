import 'dart:ui';

import 'package:data_networking/Screens/home_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeScreenViewModel>(
        create: HomeScreenViewModel(),
        builder: (context, viewmodel, child) {
          return Container(
            color: Colors.white,
            child: SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  title: const Text('Data Networking'),
                ),
                body: Center(
                  child: Text(
                    'Total Cases : ${apiResponseModel.cases}\n'
                        'Today\'s Cases : ${apiResponseModel.todayCases}\n'
                        'Total Death : ${apiResponseModel.deaths}\n'
                        'Today\'s Cases : ${apiResponseModel.todayDeaths}\n'
                        'Total Recovered : ${apiResponseModel.recovered}\n'
                        'Active Cases : ${apiResponseModel.active}\n'
                        'Critical Cases : ${apiResponseModel.critical}\n'
                        'Cases per million : ${apiResponseModel
                        .casesPerOneMillion}\n'
                        'deaths per million : ${apiResponseModel
                        .deathsPerOneMillion}\n'
                        'Total Tests done : ${apiResponseModel.tests}\n'
                        'Tests per million  : ${apiResponseModel
                        .testsPerOneMillion}\n'
                        'Affected countries : ${apiResponseModel
                        .affectedCountries}\n',
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: () {
                    getDataFromApi();
                  },
                  child: Icon(Icons.cloud_download),
                  tooltip: 'Get data from API',
                ),
              ),
            )
            ,
          )
          ,
        });
  }
}


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<APIResponseModel> apiResponseModel;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Data Networking'),
            ),
            body: Center(
              child: FutureBuilder(
                future: getDataFromApi(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    APIResponseModel apiResponseModel = snapshot
                        .data as APIResponseModel;
                    return
                  } else {
                    return const Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        'Press the floating action button to get data',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
            floatingActionButton:
        ),
      ),
    );
  }


}