import 'package:flutter/material.dart';
import 'package:luvit/data_layer/models/route_details.dart';
import 'package:luvit/service_layer/routes/app_router_service.dart';
import 'package:luvit/service_layer/routes/app_router_service_interface.dart';

///Interface for in app navigation service
abstract class NavigationServiceInterface {
  ///Default constructor for [NavigationServiceInterface].
  ///Takes [AppRoutersService] as a parameter
  NavigationServiceInterface(this.appRoutersService);

  ///[AppRouterServiceInterface] implementation to fetch context
  ///and manage routes
  final AppRouterServiceInterface appRoutersService;

  ///Function to push a new screen
  Future<dynamic> pushScreen(
    RouteDetails route, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? pathParameters,
    Map<String, dynamic>? extra,
    bool makeHapticFeedback = true,
  }) {
    throw UnimplementedError();
  }

  ///Function to push a new screen by replacing current screen
  void pushReplacementScreen(
    RouteDetails route, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? pathParameters,
    Map<String, dynamic>? extra,
    bool makeHapticFeedback = true,
  }) {
    throw UnimplementedError();
  }

  ///Function to first pop the current screen and push a new screen
  ///by replacing the second top screen
  void popAndPushReplacement(
    RouteDetails route, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? pathParameters,
    Map<String, dynamic>? extra,
    bool makeHapticFeedback = true,
  }) {
    throw UnimplementedError();
  }

  ///Function to navigate to a named route
  void goToRoute(
    RouteDetails route, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? pathParameters,
    Map<String, dynamic>? extra,
    bool makeHapticFeedback = true,
  }) {
    throw UnimplementedError();
  }

  ///Function to push a new [Dialog]
  Future<dynamic> pushDialog(Widget dialog, {bool isDismissible = false}) {
    throw UnimplementedError();
  }

  ///Function to show a [SnackBar]
  void showSnackBar(
    String message, {
    Duration duration = const Duration(seconds: 3),
    SnackBarAction? snackBarAction,
  }) {
    throw UnimplementedError();
  }

  ///Function to pop the current screen or [Dialog]
  void pop({dynamic sendDataBack, bool useHaptic = true}) {
    throw UnimplementedError();
  }

  ///Function to pop the current screen or [Dialog] and push a new screen
  void popAndPushScreen(
    RouteDetails route, {
    Map<String, dynamic>? queryParams,
    Map<String, String>? params,
    Map<String, dynamic>? extra,
    bool makeHapticFeedback = false,
  }) {
    throw UnimplementedError();
  }
}
