import '../../views/login_page/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      builder: (context, model, child) => const SafeArea(
        child: Scaffold(
          body: Center(
            child: Text('Login Page'),
          ),
        ),
      ),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
