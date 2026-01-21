import 'package:flutter/cupertino.dart';
import 'package:linkly/core/enums/enums.dart';

class BaseViewmodel extends ChangeNotifier {
  ViewState _state = ViewState.idle;

  ViewState get state => _state;
  setstate(ViewState) {
    _state = state;
    notifyListeners();
  }
}
