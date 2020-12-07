import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 125,
                  height: 150,
                  child: Image.asset('assets_1/images/LOGO.png')),
              Container(height: 1),
              Card(
                color: Colors.blueGrey[700],
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 8, right: 8, bottom: 5, top: 8),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (text) {
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'Email', border: OutlineInputBorder()),
                      ),
                      SizedBox(height: 4),
                      TextField(
                        onChanged: (text) {
                          password = text;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 5),
                      SizedBox(height: 4),
                      RaisedButton(
                        textColor: Colors.white,
                        color: Colors.redAccent,
                        onPressed: () {
                          if (email == 'ravi02' && password == '123') {
                            print('correto');
                            Navigator.of(context).pushReplacementNamed('/home');
                          } else {
                            print('nome ou senha invalido');
                          }
                        },
                        child: Container(
                            width: double.infinity,
                            child: Text(
                              'Login',
                              textAlign: TextAlign.center,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.blueAccent[100]),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset('assets_1/images/background_chuva.jpg',
                  fit: BoxFit.cover)),
          Container(color: Colors.white.withOpacity(0.015)),
          _body(),
        ],
      ),
    );
  }
}