import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:slinfy_crm/src/blocs/authentication/authentication_bloc.dart';
import 'package:slinfy_crm/src/blocs/database/database_bloc.dart';
import 'package:slinfy_crm/src/blocs/details/details_form_bloc.dart';
import 'package:slinfy_crm/src/config/observer/app_bloc_observer.dart';
import 'package:slinfy_crm/src/my_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:slinfy_crm/src/repo/repository/authentication_repository.dart';
import 'package:slinfy_crm/src/repo/repository/database_repository.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  
  BlocOverrides.runZoned(() => runApp(
      MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) =>
        AuthenticationBloc(AuthenticationRepositoryImpl())
          ..add(AuthenticationStarted()),
      ),
      BlocProvider(
        create: (context) => DetailsFormBloc(
            AuthenticationRepositoryImpl(), DatabaseRepositoryImpl()),
      ),
      BlocProvider(
        create: (context) => DatabaseBloc(DatabaseRepositoryImpl()),
      )
    ],
    child: const MyApp(),
  )),
    blocObserver: AppBlocObserver());



  // BlocOverrides.runZoned(() => runApp(MyApp()),
  //     blocObserver: AppBlocObserver());
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((_) {
  //   runApp(new MyApp());
  // });
}
