class APIResponseModel {
  int? updated;
  int? cases;
  int? todayCases;
  int? deaths;
  int? todayDeaths;
  int? recovered;
  int? todayRecovered;
  int? active;
  int? critical;
  int? casesPerOneMillion;
  double? deathsPerOneMillion;
  int? tests;
  double? testsPerOneMillion;
  int? population;
  int? oneCasePerPeople;
  int? oneDeathPerPeople;
  int? oneTestPerPeople;
  double? activePerOneMillion;
  double? recoveredPerOneMillion;
  double? criticalPerOneMillion;
  int? affectedCountries;

  APIResponseModel( {
         required this.updated,
         required this.cases,
         required this.todayCases,
         required this.deaths,
         required this.todayDeaths,
         required this.recovered,
         required this.todayRecovered,
         required this.active,
         required this.critical,
         required this.casesPerOneMillion,
         required this.deathsPerOneMillion,
         required this.tests,
         required this.testsPerOneMillion,
         required this.population,
         required this.oneCasePerPeople,
         required this.oneDeathPerPeople,
         required this.oneTestPerPeople,
         required this.activePerOneMillion,
         required this.recoveredPerOneMillion,
          required this.criticalPerOneMillion,
     required this.affectedCountries});

 factory APIResponseModel.fromJson(Map<String, dynamic> json) {
   return APIResponseModel(

    updated: json['updated'],
    cases : json['cases'],
    todayCases : json['todayCases'],
    deaths : json['deaths'],
    todayDeaths : json['todayDeaths'],
    recovered : json['recovered'],
    todayRecovered : json['todayRecovered'],
    active : json['active'],
    critical : json['critical'],
    casesPerOneMillion : json['casesPerOneMillion'],
    deathsPerOneMillion : json['deathsPerOneMillion'],
    tests : json['tests'],
    testsPerOneMillion : json['testsPerOneMillion'],
    population : json['population'],
    oneCasePerPeople : json['oneCasePerPeople'],
    oneDeathPerPeople : json['oneDeathPerPeople'],
    oneTestPerPeople : json['oneTestPerPeople'],
    activePerOneMillion : json['activePerOneMillion'],
    recoveredPerOneMillion : json['recoveredPerOneMillion'],
    criticalPerOneMillion : json['criticalPerOneMillion'],
    affectedCountries : json['affectedCountries'],
   );
 }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['updated'] = updated;
    data['cases'] = cases;
    data['todayCases'] = todayCases;
    data['deaths'] = deaths;
    data['todayDeaths'] = todayDeaths;
    data['recovered'] = recovered;
    data['todayRecovered'] = todayRecovered;
    data['active'] = active;
    data['critical'] = critical;
    data['casesPerOneMillion'] = casesPerOneMillion;
    data['deathsPerOneMillion'] = deathsPerOneMillion;
    data['tests'] = tests;
    data['testsPerOneMillion'] = testsPerOneMillion;
    data['population'] = population;
    data['oneCasePerPeople'] = oneCasePerPeople;
    data['oneDeathPerPeople'] = oneDeathPerPeople;
    data['oneTestPerPeople'] = oneTestPerPeople;
    data['activePerOneMillion'] = activePerOneMillion;
    data['recoveredPerOneMillion'] = recoveredPerOneMillion;
    data['criticalPerOneMillion'] = criticalPerOneMillion;
    data['affectedCountries'] = affectedCountries;
    return data;
  }
}