
import 'package:flutter_modular/flutter_modular.dart';
import 'package:local_notification_awesome/lib/pages/home/cubit/home_cubit.dart';
import 'package:local_notification_awesome/lib/pages/home/home_page.dart';
import 'package:local_notification_awesome/lib/pages/splash/cubit/splash_cubit.dart';
import 'package:local_notification_awesome/lib/pages/splash/presenter/splash_page.dart';

import '../plant_stats_page.dart';

class AppModule extends Module{

  @override
  List<Bind> get binds => [
    Bind((i) => SplashCubit()),
    Bind((i) => HomeCubit()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => SplashPage()),
    ChildRoute(Modular.initialRoute + "home", child: (_, args) => const HomePage()),
    ChildRoute(Modular.initialRoute + "plant", child: (_, args) => const PlantStatsPage()),
  ];

}