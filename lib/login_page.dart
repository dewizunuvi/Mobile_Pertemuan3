import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Login Page"),
          ),
          body: Column(
            children: [
              _usernameField(),
              _passwordField(),
              _LoginButton(context),
            ],
          ),
        )
    );
  }
  Widget _usernameField (){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        onChanged: (value) {
          username = value;
        },
        decoration: InputDecoration(
          hintText: 'Username',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Colors.blue),
          )
        ),
      ),
    );
  }
  Widget _passwordField (){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextFormField(
          onChanged: (value) {
            password = value;
          },
          decoration: InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(color: Colors.blue),
              )
          ),
        ),
    );
  }

  Widget _LoginButton(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {
          String pesan = "";
          if(username == "user" && password == "password"){
            pesan = "Login Success";
          } else{
            pesan = "Login Failed";
          }

          SnackBar snackBar = SnackBar(content: Text(pesan));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);

        },
        child: Text("Login"),
      ),
    );
  }
}
