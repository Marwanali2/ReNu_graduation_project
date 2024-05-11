import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/clean_up/presentation/views/select_company.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/location_service.dart';
import 'package:location/location.dart';
import 'package:geocoding/geocoding.dart' hide Location;
import 'package:panara_dialogs/panara_dialogs.dart';

class CustomGoogleMap extends StatefulWidget {
  const CustomGoogleMap({super.key, required this.isShowCompany});
  final bool isShowCompany;
  @override
  State<CustomGoogleMap> createState() => _CustomGoogleMapState();
}

class _CustomGoogleMapState extends State<CustomGoogleMap> {
  late CameraPosition initialCameraPosition;
  late LocationService locationService;
  late GoogleMapController googleMapController;
  Location location = Location();
  Set<Marker> markers = {};
  List<Placemark> placemarks = [];
  @override
  void initState() {
    LatLng initialLocation = widget.isShowCompany
        ? const LatLng(30.7843657916722, 30.996239788174858)
        : const LatLng(30.78753546661836, 30.99754772107391);
    initialCameraPosition = CameraPosition(
      target: initialLocation,
      zoom: widget.isShowCompany ? 15 : 13.5,
    );
    widget.isShowCompany
        ? markers.add(
            const Marker(
              markerId: MarkerId(
                'company location marker',
              ),
              position: LatLng(30.7843657916722, 30.996239788174858),
            ),
          )
        : markers = {};
    locationService = LocationService();
    locationService.getUserLocationWithServiceAndPermissions();

    super.initState();
  }

  @override
  void dispose() {
    googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          mapType: MapType.terrain,
          zoomControlsEnabled: false,
          markers: markers,
          initialCameraPosition: initialCameraPosition,
          onMapCreated: (controller) {
            googleMapController = controller;
            //     initMapStyle();
            //  initMarkers();
          },
        ),
        widget.isShowCompany
            ? const SizedBox()
            : Positioned(
                left: 16.w,
                bottom: 159.h,
                child: GestureDetector(
                  onTap: () async {
                    LocationData userLocation = await location.getLocation();
                    googleMapController.animateCamera(
                        CameraUpdate.newCameraPosition(CameraPosition(
                            target: LatLng(
                              userLocation.latitude!,
                              userLocation.longitude!,
                            ),
                            zoom: 15)));
                    placemarks = await placemarkFromCoordinates(
                      userLocation.latitude!,
                      userLocation.longitude!,
                    );
                    placemarks.add(placemarks[0]);
                    initMarkers();
                  },
                  child: Container(
                    width: 44.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: ColorsManager.semiGrey3,
                      border: Border.all(
                          color: ColorsManager.mainBlack, width: 1.w),
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: Center(
                        child: SvgPicture.asset('assets/svg/set_location.svg')),
                  ),
                ),
              ),
        Positioned(
          bottom: 30.h,
          left: 16.w,
          right: 16.w,
          child: ElevatedButton(
              onPressed: () {
                if (placemarks.isEmpty && widget.isShowCompany == false) {
                  PanaraInfoDialog.show(
                    context,
                    title: 'Please set your location',
                    message: 'Please set your location on the map to continue',
                    buttonText: "Okay",
                    onTapDismiss: () {
                      Navigator.pop(context);
                    },
                    panaraDialogType: PanaraDialogType.normal,
                    barrierDismissible: false,
                  );

                  return;
                }
                widget.isShowCompany
                    ? Navigator.pop(context)
                    : Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectCompanyView(
                            placemarks: placemarks,
                          ),
                        ));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  ColorsManager.green1.withOpacity(0.8),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.green[300]!,
                      width: 5.w,
                    ),
                    borderRadius: BorderRadius.circular(
                      50.r,
                    ),
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 18.h,
                  bottom: 18.h,
                ),
                child: Center(
                  child: Text(
                    widget.isShowCompany ? 'Back' : 'Confirm',
                    style: TextStyles.font16BlackSemiBoldInter.copyWith(
                      color: ColorsManager.mainWhite,
                      fontSize: 20.sp,
                      fontFamily: 'Popins',
                    ),
                  ),
                ),
              )),
        ),
      ],
    );
  }

/*   void initMapStyle() async {
    googleMapController = googleMapController;
    var darkMapStyle = await DefaultAssetBundle.of(context).loadString(
      'assets/map_styles/dark_map_style.json',
   );
     googleMapController.setMapStyle(darkMapStyle);
  }
 */
  void initMarkers() async {
    LocationData userLocation = await location.getLocation();
    var customMarker = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), "assets/images/user_location_circle.png");
    Marker userLocationMarker = Marker(
      markerId: const MarkerId(
        'user location marker',
      ),
      position: LatLng(
        userLocation.latitude!,
        userLocation.longitude!,
      ),
      icon: customMarker,
    );
    markers.add(userLocationMarker);
    setState(() {});
  }
}
