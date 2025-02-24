import 'package:flutter/material.dart';
import 'package:local_notification_awesome/lib/util/component/widgets.dart';

class PlantStatsPage extends StatelessWidget {
  const PlantStatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal[400],
        title: AppBarTitle(),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Status da Planta',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(
                height: 45,
              ),
              PlantImage(),
              SizedBox(
                height: 25,
              ),
              PlantStats(),
            ],
          ),
        ),
      ),
    );
  }
}
