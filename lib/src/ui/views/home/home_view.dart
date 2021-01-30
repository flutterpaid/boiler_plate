import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('HomeView:${model.counter}'),
            const SizedBox(
              height: 60,
            ),
            FlatButton(
                onPressed: model.navigateToStart,
                child: const Text('Start Page'))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: model.updateCounter,
          child: const Icon(Icons.add),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
