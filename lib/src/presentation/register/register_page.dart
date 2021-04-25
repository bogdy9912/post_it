import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:post_it/src/actions/auth/index.dart';
import 'package:post_it/src/actions/index.dart';
import 'package:post_it/src/models/index.dart';
import 'package:post_it/src/presentation/app_routes.dart';
import 'package:post_it/src/presentation/mixin/dialog_mixin.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage();

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> with DialogMixin {
  final TextEditingController _displayName = TextEditingController();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  void _response(AppAction action) {
    if (action is RegisterError) {
      showError(context, 'Register Error', action.error);
    } else if (action is RegisterSuccessful) {
      Navigator.pushNamedAndRemoveUntil(context, AppRoutes.home, (_) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create Account',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Form(
          child: Builder(
            builder: (BuildContext context) => SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24.0, top: 32),
                    child: Text(
                      'Enter your details and you are ready to go!',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                  TextFormField(
                    controller: _displayName,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'full name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Theme.of(context).accentColor,
                      filled: true,
                    ),
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a name ';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _username,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Theme.of(context).accentColor,
                      filled: true,
                    ),
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter an username';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _password,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Theme.of(context).accentColor,
                      filled: true,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    validator: (String? value) {
                      if (value == null || value.length < 6) {
                        return 'Please enter a longer password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _confirmPassword,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'repeat password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Theme.of(context).accentColor,
                      filled: true,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                    validator: (String? value) {
                      if (value == null || value != _password.text) {
                        return 'The passwords are not identical';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8),
                  ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(width: double.infinity, height: 48),
                    child: ElevatedButton(
                      onPressed: () {
                        final bool valid = Form.of(context)!.validate();
                        if (valid) {
                          StoreProvider.of<AppState>(context).dispatch(Register(
                              username: _username.text,
                              password: _password.text,
                              response: _response,
                              displayName: _displayName.text));
                        }
                      },
                      child: const Text('CREATE ACCOUNT'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
