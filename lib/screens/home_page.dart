import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:livraison_app/component/button.dart';
import 'package:livraison_app/component/text_field.dart';
import 'package:livraison_app/component/trait.dart';
import 'package:livraison_app/current_location.dart';
import 'package:livraison_app/location_service.dart';
import 'package:livraison_app/screens/accueil.dart';
// import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:livraison_app/constant/constant.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // declaration des controlleurs
  TextEditingController originController = TextEditingController();
  TextEditingController destinationController = TextEditingController();
  Completer<GoogleMapController> mapController = Completer();
  TextEditingController nbController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController dateController = TextEditingController();
//lat
  late double lat = 5.406825241686419; //5.3913624;,
  double long = -3.9579632445524813; //-3.9980584;
  late String lati;
  late String longi;

  // declaration des marker
  // late Map<String, Marker> _markers;
  // Set<Marker> markers = Set<Marker>();
  Set<Marker> markers = <Marker>{};
  // Set<Polygon> polygon = <Polygon>{};
  Set<Polyline> polyline = <Polyline>{};
  //
  // List<LatLng> polygonLatlng = <LatLng>[];

  // int _polygonCounter = 1;
  // int _polylineCounter = 1;

  // date time
  DateTime datetime = DateTime(2023, 10, 17, 15, 50);

  // static const LatLng sourceLocation = LatLng(
  //   5.3913624,
  //   -3.9980584,
  // );
  // static const destination = LatLng(
  //   5.3913624,
  //   -3.9880584,
  // );

  // List<LatLng> polylinecoordinates = [];

  // void getPolypoint() async {
  //   PolylinePoints polypoints = PolylinePoints();
  // PolylineResult result = await polypoints.getRouteBetweenCoordinates(
  //   googleapikey,
  //   PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
  //   PointLatLng(destination.latitude, destination.longitude),
  // );

  // if (result.points.isNotEmpty) {
  //   for (var point in result.points) {
  //     polylinecoordinates.add(
  //       LatLng(point.latitude, point.longitude),
  //     );
  //   }
  //   setState(() {});
  // }
  // }

  // // // new position
  // final CameraPosition _location = CameraPosition(
  //   // bearing: 90,
  //   // target: LatLng(5.3913624, -3.9980584),
  //   target: LatLng(lat, long),
  //   zoom: 14,
  // );

  @override
  void initState() {
    // getPolypoint();
    currentlocation;
    super.initState();
    _setMarker(
      // const LatLng(5.3913624, -3.9980584),
      LatLng(lat, long),
    );
    // const CurrentLocationService();

    // _markers = {}; // Initialisez la variable _markers ici.
  }

  ///
  ///
  void currentlocation() {
    const CurrentLocationService().getCurrentPosition().then((value) {
      lati = '${value?.latitude}';
      longi = '${value?.longitude}';

      //
      lat = double.parse(lati);
      long = double.parse(longi);
    });
  }

  // void
  void _setMarker(LatLng point) {
    setState(() {
      markers.add(
        Marker(
          markerId: const MarkerId('marker'),
          position: point,
        ),
      );
    });
  }

  // // polygon
  // void _setPolygon() {
  //   final String polygonIdval = 'polygon_$_polygonCounter';
  //   _polygonCounter++;

  //   polygon.add(
  //     Polygon(
  //       polygonId: PolygonId(polygonIdval),
  //       points: polygonLatlng,
  //       strokeWidth: 2,
  //       fillColor: Colors.black,
  //     ),
  //   );
  // }

  /////
  // // polyline
  // void _setPolyline(List<PointLatlng> points) {
  //   final String polylineIdval = 'polyline_$_polylineCounter';
  //   _polylineCounter++;

  //   polyline.add(
  //     Polyline(
  //       polylineId: PolylineId(polylineIdval),
  //       width: 2,
  //       color: Colors.redAccent,
  //       points: points
  //           .map(
  //             (point) => LatLng(point.latitude, point.longitude),
  //           )
  //           .toList(),
  //     ),
  //   );
  // }

  ///

  @override
  Widget build(BuildContext context) {
    // final hours = datetime.hour.toString().padLeft(2, '0');
    // final mins = datetime.minute.toString().padLeft(2, '0');

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
      ),
      body: SizedBox(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  searchTextField(
                    title: 'Search',
                    hint: 'Search a city !',
                    controller: originController,
                    tap: () async {
                      var ret = originController.text;
                      debugPrint(ret);
                      // _setMarker(point)

                      if (ret.isNotEmpty) {
                        var place = await LocationService()
                            .getPlace(originController.text);
                        _goToPlace(place);
                      } else {
                        const ScaffoldMessenger(
                          child: Text('Veuillez saisir une adresse !'),
                        );
                        // Fluttertoast.showToast(
                        //     msg: "This is Center Short Toast",
                        //     toastLength: Toast.LENGTH_SHORT,
                        //     gravity: ToastGravity.CENTER,
                        //     timeInSecForIosWeb: 1,
                        //     backgroundColor: Colors.red,
                        //     textColor: Colors.white,
                        //     fontSize: 16.0);
                      }
                    },
                  ),
                  // searchTextField(
                  //   title: 'destination',
                  // hint: 'Search destination !',
                  // controller: destinationController,
                  // tap: () async {
                  //   var ret = destinationController.text;
                  //   debugPrint(ret);

                  //   if (ret.isNotEmpty || originController.text.isNotEmpty) {
                  //     var directions = await LocationService().getDirections(
                  //         originController.text, destinationController.text);
//
                  //       _getToDirections(
                  //         directions['start_location']['lat'],
                  //         directions['start_location']['lng'],
                  //         directions['bounds_ne'],
                  //         directions['bounds_sw'],
                  //       );

                  //       // _setPolyline(directions['polyline_decoded']);
                  //     } else {
                  //       const ScaffoldMessenger(
                  //         child: Text('Veuillez saisir une adresse !'),
                  //       );
                  //     }
                  //   },
                  // ),
                  Expanded(
                    child: GoogleMap(
                      mapType: MapType.normal,
                      // polygons: polygon,
                      polylines: polyline,
                      initialCameraPosition: CameraPosition(
                        // bearing: 192.833,
                        target: LatLng(lat, long),
                        zoom: 14,
                      ),

                      // polylines: {
                      //   Polyline(
                      //     polylineId: const PolylineId("route"),
                      //     points: polylinecoordinates,
                      //   )
                      // },
                      onMapCreated: (GoogleMapController controller) {
                        mapController.complete(controller);
                      },
                      // markers: _markers.values.toSet(),
                      markers: {
                        Marker(
                          icon: BitmapDescriptor.defaultMarkerWithHue(
                              BitmapDescriptor.hueCyan),
                          // icon: BitmapDescriptor.fromAssetImage(const ImageConfiguration(), "assets/emplacement.gif"),
                          markerId: const MarkerId("source"),
                          position: LatLng(lat, long),
                          infoWindow: const InfoWindow(
                            title: 'Marker title',
                          ),
                          onTap: () {
                            debugPrint('Vous avez cliquer sur le marqueur');
                          },
                        ),
                      },
                      onTap: (point) {
                        setState(() {
                          // polygonLatlng.add(point);
                          // _setPolygon();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 1),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              // _go();
                              // label: const Text('let go'),
                              const CurrentLocationService()
                                  .getCurrentPosition()
                                  .then((value) {
                                lati = '${value?.latitude}';
                                longi = '${value?.longitude}';

                                //
                                lat = double.parse(lati);
                                long = double.parse(longi);
                              });
                              setState(() {
                                _setMarker(
                                  LatLng(lat, long),
                                );
                              });

                              debugPrint('MSS : $lat $long');
                            },
                            child: const Image(
                              image: AssetImage('assets/emplacement.gif'),
                              width: 45,
                              height: 45,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Expanded(
                            child: Text(
                              'Position actuelle : cocody 2 plateaux 7ieme tranche rue l 33 ',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          traitVContent(),
                          Container(
                            width: 65,
                            height: 65,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.horizontal(
                                  right: Radius.circular(20)),
                            ),
                            child: MaterialButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        modalColis());
                              },
                              // color: Colors.amber,
                              // elevation: 20,
                              child: Image.asset(
                                'assets/envoyer-un-mail.png',
                                width: 90,
                                height: 90,
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

///////////////////
  /// MODAL SHEET ///
///////////////////

  Widget modalColis() {
    final hours = datetime.hour.toString().padLeft(2, '0');
    final mins = datetime.minute.toString().padLeft(2, '0');

    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: 330,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 15, 50, 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              traitContent(),
              const Expanded(
                child: Text(
                  'Position actuelle : cocody 2 plateaux 7ieme tranche rue l 33 ',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              // Nombre
              Expanded(
                child: textField(
                  title: '',
                  hint: 'Nombre de colis',
                  controller: nbController,
                  maxlines: 1,
                  // icon: Icons.abc,
                  obscur: false,
                ),
              ),
              Expanded(
                child: textField(
                  title: '',
                  hint: 'Numéro de telephone',
                  controller: numberController,
                  maxlines: 1,
                  // icon: Icons.abc,
                  obscur: false,
                ),
              ),
              Expanded(
                child: dateField(
                  title:
                      '${datetime.day}/${datetime.month}/${datetime.year} à $hours:$mins',
                  hint:
                      '${datetime.day}/${datetime.month}/${datetime.year} à $hours:$mins',
                  controller: dateController,
                  maxlines: 1,
                  icon: Icons.abc,
                  tap: () async {
                    final date = await pickDateTime();
                    debugPrint('$datetime');
                    if (date == null) return; // cancel

                    final newDateTime = DateTime(
                      date.year,
                      date.month,
                      date.day,
                      date.hour,
                      date.minute,
                    );

                    setState(() {
                      datetime = newDateTime;
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  buttonCustom(
                    tap: () {
                      var nb = nbController.text;
                      var num = numberController.text;
                      var date =
                          '${datetime.day}/${datetime.month}/${datetime.year} à $hours:$mins';
                      debugPrint(
                          'NOMBRE DE COLIS : $nb => NUMERO DE TELEPHONE : $num => DATE ET HEURE : +$date');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MonAccueil()),
                      );
                      // Navigator.of(context).pop();
                    },
                    text: 'Je confirme',
                    textColor: Colors.white,
                    color: Colors.amber,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  ///
  ///
  Future<DateTime?> pickDate() => showDatePicker(
        context: context,
        initialDate: datetime,
        firstDate: DateTime(2005),
        lastDate: DateTime(2100),
      );

  Future<TimeOfDay?> pickTime() => showTimePicker(
        context: context,
        initialTime: TimeOfDay(hour: datetime.hour, minute: datetime.minute),
      );

  Future pickDateTime() async {
    DateTime? date = await pickDate();
    if (date == null) return;

    TimeOfDay? time = await pickTime();
    if (time == null) return;

    final datetime = DateTime(
      date.year,
      date.month,
      date.day,
      time.hour,
      time.minute,
    );
    setState(() {
      this.datetime = datetime;
    });
  }

// //   /// gps
//   Future<void> _go() async {
// // Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

//     final GoogleMapController controller = await mapController.future;
//     controller.animateCamera(CameraUpdate.newCameraPosition(_location));
//   }

  // go to place
  Future<void> _goToPlace(Map<String, dynamic> place) async {
    final double lat = place['geometry']['location']['lat'];
    final double lng = place['geometry']['location']['lng'];

    final GoogleMapController controller = await mapController.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(lat, lng), zoom: 12),
      ),
    );
    _setMarker(
      LatLng(lat, lng),
    );
  }

  //_getToDirections
  Future<void> getToDirections(
    double lat,
    double lng,
    Map<String, dynamic> boundsNe,
    Map<String, dynamic> boundsSw,
  ) async {
    // final double lat = place['geometry']['location']['lat'];
    // final double lng = place['geometry']['location']['lng'];

    final GoogleMapController controller = await mapController.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(lat, lng), zoom: 12),
      ),
    );

    // controller.animateCamera(
    //   CameraUpdate.newLatLngBounds(
    //     southwest: LatLng(boundsSw['lat'], boundsSw['lng']),
    //     northeast: LatLng(boundsNe['lat'], boundsNe['lng']),
    //   ),
    // );
    _setMarker(
      LatLng(lat, lng),
    );
  }

  //////
  ///
  Future<void> get(
    double lat,
    double lng,
    Map<String, dynamic> boundsNe,
    Map<String, dynamic> boundsSw,
  ) async {
    // final double lat = place['geometry']['location']['lat'];
    // final double lng = place['geometry']['location']['lng'];

    final GoogleMapController controller = await mapController.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(lat, lng), zoom: 12),
      ),
    );
    _setMarker(
      LatLng(lat, lng),
    );
  }
}
