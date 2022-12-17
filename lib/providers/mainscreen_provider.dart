import 'package:flutter/foundation.dart';

class MainScreenProvider with ChangeNotifier {
  updateUI() {
    notifyListeners();
  }
}
