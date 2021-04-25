import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:post_it/src/actions/auth/index.dart';
import 'package:post_it/src/actions/index.dart';
import 'package:post_it/src/actions/posts/index.dart';
import 'package:post_it/src/models/index.dart';
import 'package:post_it/src/presentation/app_routes.dart';
import 'package:post_it/src/presentation/mixin/dialog_mixin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage();

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with DialogMixin{
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  void _response(AppAction action) {
    if (action is LoginError) {
      showError(context, 'Login error', action.error);
    } else if (action is LoginSuccessful){
      StoreProvider.of<AppState>(context).dispatch(const GetFeed());
//      print('LALALLA');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          child: Builder(
            builder: (BuildContext context) => SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(top: 72),
                    child: const Image(
                      image: AssetImage('assets/images/logo_app.png'),
                      height: 80,
                      width: 80,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 72),
                    child: Text(
                      'Welcome back!\nLogin to your account.',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                  const SizedBox(height: 53),
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
                  const SizedBox(height: 6),
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
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    validator: (String? value) {
                      if (value == null || value.length < 6) {
                        return 'Please enter a longer password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 6),
                  ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(width: double.infinity, height: 48),
                    child: ElevatedButton(
                      onPressed: () {
                        final bool valid = Form.of(context)!.validate();
                        if (valid) {

                          StoreProvider.of<AppState>(context)
                              .dispatch(Login(username: _username.text, password: _password.text, response: _response));
                        }
                      },
                      child: const Text('LOGIN'),
                    ),
                  ),
                  const SizedBox(height: 63),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.register);
                        },
                        child: const Text(
                          'New here? Create an account',
                          style: TextStyle(decoration: TextDecoration.underline, color: Colors.white),
                        ),
                      ),
                    ],
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
