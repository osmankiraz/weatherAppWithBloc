import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_flutter_bloc/widget/hava_durumu_resim.dart';
import 'package:weather_app_flutter_bloc/widget/location.dart';
import 'package:weather_app_flutter_bloc/widget/max_ve_min_sicaklik.dart';
import 'package:weather_app_flutter_bloc/widget/sehir_sec.dart';
import 'package:weather_app_flutter_bloc/widget/son_guncelleme.dart';

class WeatherApp extends StatelessWidget {
  String kullanicininSectigiSehir = "Angara";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () async {
              kullanicininSectigiSehir =
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => SehirSecWidget()));
            },
          )
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: LocationWidget(
                secilenSehir: kullanicininSectigiSehir,
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: SonGuncellemeWidget()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: HavaDurumuResimWidget()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: MaxveMinSicaklikWidget()),
            )
          ],
        ),
      ),
    );
  }
}
