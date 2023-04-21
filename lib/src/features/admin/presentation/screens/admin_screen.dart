import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_supercluster/flutter_map_supercluster.dart';
import 'package:game_rev/injection.dart';
import 'package:game_rev/src/core/config/navigation/navigation.dart';
import 'package:game_rev/src/core/utils/enums.dart';
import 'package:game_rev/src/core/widgets/loading.dart';
import 'package:game_rev/src/features/authentication/presentation/authentication_bloc.dart';
import 'package:game_rev/src/features/dashboard/presentation/flagged_reviews.dart';
import 'package:latlong2/latlong.dart';

import '../admin_bloc.dart';
import 'add_game_screen.dart';

class AdminScreen extends StatefulWidget {
  static const routeName = '/admin';

  const AdminScreen({Key? key}) : super(key: key);

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  final _markersNotifier = ValueNotifier<Set<Marker>>({});

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AdminBloc>(
      create: (context) => getIt<AdminBloc>()
        ..add(
          const AdminEvent.getReviewLocations(
            duration: ReviewLocationDuration.day,
            value: 7,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Admin Screen'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigation.intent(context, AddGameScreen.routeName);
          },
          child: const Icon(Icons.add),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/dashboard');
                },
                child: const Text('Go to Dashboard'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigation.intent(context, FlaggedReviewsScreens.routeName);
                },
                child: const Text('Review flagged Reviews'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<AuthenticationBloc>().add(const SignOutEvent());
                },
                child: const Text('Logout'),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: BlocBuilder<AdminBloc, AdminState>(
                  buildWhen: (p, c) {
                    return c.maybeWhen(
                      orElse: () => false,
                      fetchingReviewLocations: () => true,
                      reviewLocationsFetched: (r) => true,
                      fetchingReviewLocationsFailure: (f) => true,
                    );
                  },
                  builder: (context, state) {
                    log('state: $state');
                    return state.maybeWhen(
                      fetchingReviewLocationsFailure: (f) => Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Error: $f'),
                            ElevatedButton(
                              onPressed: () => _fetchReviewsLocation(context),
                              child: const Text('Retry'),
                            ),
                          ],
                        ),
                      ),
                      reviewLocationsFetched: (r) {
                        final markers = r
                            .map(
                              (e) => Marker(
                                point: LatLng(e.latitude, e.longitude),
                                width: 10,
                                height: 10,
                                builder: (context) => const Icon(
                                  Icons.location_on,
                                  color: Colors.red,
                                ),
                              ),
                            )
                            .toList();
                        return _buildMap(markers);
                      },
                      orElse: () => Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text('Fetching reviews location'),
                            SizedBox(height: 20),
                            CircularProgressIndicator(),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _fetchReviewsLocation(BuildContext context) {
    context.read<AdminBloc>().add(
          const AdminEvent.getReviewLocations(
            duration: ReviewLocationDuration.day,
            value: 7,
          ),
        );
  }

  _buildMap(List<Marker> markers) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(51.5, -0.09),
        zoom: 9.2,
        maxZoom: 18,
        interactiveFlags: InteractiveFlag.all & ~InteractiveFlag.rotate,
      ),
      nonRotatedChildren: [
        AttributionWidget.defaultWidget(
          source: 'OpenStreetMap contributors',
          onSourceTapped: null,
        ),
      ],
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
        // MarkerLayer(
        //   markers: markers,
        // ),
        SuperclusterLayer.immutable(
          initialMarkers: markers, // Provide your own
          clusterWidgetSize: const Size(40, 40),
          controller: SuperclusterImmutableController(),
          builder: (context, position, markerCount, extraClusterData) {
            log('position: $position');
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  markerCount.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
