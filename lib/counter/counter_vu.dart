

import '../flavor_config.dart';
import 'counter_vm.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CounterScreen extends ViewModelBuilderWidget<CounterViewModel> {
  const CounterScreen(this.flavorConfig, {Key? key}) : super(key: key);
  final FlavorConfig flavorConfig ;

  @override
  Widget builder(BuildContext context, CounterViewModel viewModel, Widget? child) {

    return Scaffold(
      appBar: AppBar(title: Text(flavorConfig.type),leading: Icon(flavorConfig.icon),),
      body: Center(
        child: Text(viewModel.count.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          flavorConfig.type == 'Inc' ?
          viewModel.onIncrement():
              viewModel.onDecrement();
        },
        child:  Icon(flavorConfig.icon),
      ),
    );
  }

  @override
  CounterViewModel viewModelBuilder(BuildContext context) {
    return CounterViewModel();
  }
}
