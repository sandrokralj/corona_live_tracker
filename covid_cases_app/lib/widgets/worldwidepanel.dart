import 'package:covid_cases_app/widgets/statuspanel.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WorldWidePanel extends StatelessWidget {
  final Map worldData;

  const WorldWidePanel({Key key, this.worldData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2,
        ),
        children: [
          StatusPanel(
            title: 'CONFIRMED',
            panelColor: Colors.amber[100],
            textColor: Colors.amber[800],
            count: worldData['cases'].toString(),
          ),
          StatusPanel(
            title: 'ACTIVE',
            panelColor: Colors.blue[100],
            textColor: Colors.blue[800],
            count: worldData['active'].toString(),
          ),
          StatusPanel(
            title: 'RECOVERED',
            panelColor: Colors.green[200],
            textColor: Colors.green[800],
            count: worldData['recovered'].toString(),
          ),
          StatusPanel(
            title: 'DEATHS',
            panelColor: Colors.red[200],
            textColor: Colors.red[800],
            count: worldData['deaths'].toString(),
          ),
        ],
      ),
    );
  }
}
