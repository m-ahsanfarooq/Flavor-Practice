

import 'package:stacked/stacked.dart';

class CounterViewModel extends BaseViewModel{
  int count = 0;

  onIncrement(){
    count++;
    notifyListeners();
  }
  onDecrement(){
    count--;
    notifyListeners();
  }
}