import 'package:flutter/material.dart';
import 'package:tera_store/presentation/auth/login/viewmodel/login_viewmodel.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginViewModel _viewModel = LoginViewModel(_loginUseCase);

  TextEditingController _userNameController = TextEditingController();
  TextEditingController _passowrdController = TextEditingController();

  _bind() {
    _viewModel.start(); // tell viewmodel to start your job
    _userNameController.addListener(
      () => _viewModel.setUserName(_userNameController.text),
    );
    _passowrdController.addListener(
      () => _viewModel.setPassword(_passowrdController.text),
    );
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
