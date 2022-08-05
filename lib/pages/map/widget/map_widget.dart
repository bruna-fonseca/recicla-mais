import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart' as latlong;

class MapWidget extends StatelessWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: latlong.LatLng(-8.05, -34.90),
        zoom: 13.0,
      ),
      layers: [
        TileLayerOptions(
            urlTemplate:
                "https://api.mapbox.com/styles/v1/thebruny/cl3ekix8q008w14quvqzbeh8x/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoidGhlYnJ1bnkiLCJhIjoiY2wzZWtlcGM1MDNreDNkbzRmeTN3dm90cSJ9.mpbCmzsJOXaCU7jV6Ev-2g",
            additionalOptions: {
              'accessToken':
                  'pk.eyJ1IjoidGhlYnJ1bnkiLCJhIjoiY2wzZWtlcGM1MDNreDNkbzRmeTN3dm90cSJ9.mpbCmzsJOXaCU7jV6Ev-2g',
              'id': 'mapbox.mapbox-streets-v8',
            }),
      ],
    );
  }
}

class LatLng {
  LatLng(double d, double e);
}
