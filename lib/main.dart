import 'package:beamer/beamer.dart';
import 'package:electricity_facilities/router/locations.dart';
import 'package:electricity_facilities/screens/auth_screen.dart';
import 'package:electricity_facilities/screens/splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:electricity_facilities/utils/logger.dart';

final _routerDelegate = BeamerDelegate(
    guards: [BeamGuard(pathBlueprints: ['/'], check: (context, location){
      return false;
    }, showPage: BeamPage(child: AuthScreen()))],
    locationBuilder: BeamerLocationBuilder(beamLocations:[HomeLocation()]) );

void main(){
  logger.d('My first log by logger');
  runApp(const MyApp());
}

class  MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return FutureBuilder<Object>(
      future: Future.delayed(Duration(seconds: 3), ()=>100),
      builder: (context, snapshot) {
        
        return AnimatedSwitcher(duration: const Duration(seconds: 1),
        child: _splashLoadingWidget(snapshot));
      }
    );
  }

  StatelessWidget _splashLoadingWidget(AsyncSnapshot<Object> snapshot) {
     if(snapshot.hasError){
      print('error occur while loading.');
      return Text('Error occur');
    }else if(snapshot.hasData){
      return Electricity_Facilities();
    }else{
      return SplashScreen();
    }
  }
}

class Electricity_Facilities extends StatelessWidget {
  const Electricity_Facilities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(primarySwatch: Colors.red, fontFamily: 'DoHyeon'),
      routeInformationParser: BeamerParser(),
      routerDelegate: _routerDelegate,
    );
  }
}
