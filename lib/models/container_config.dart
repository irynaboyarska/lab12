import 'package:flutter/foundation.dart';

class ContainerConfig extends ChangeNotifier {
  double _width = 100;
  double _height = 100;
  double _radius = 0;

  double get width => _width;
  double get height => _height;
  double get radius => _radius;

  void setWidth(double value) {
    _width = value;
    notifyListeners();
  }

  void setHeight(double value) {
    _height = value;
    notifyListeners();
  }

  void setRadius(double value) {
    _radius = value;
    notifyListeners();
  }
}