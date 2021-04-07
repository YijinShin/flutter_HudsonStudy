import 'package:flutter/material.dart';

class SingupPage extends StatelessWidget {

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _cpasswordController = TextEditingController();
  final _firstnameController = TextEditingController();
  final _surnameController = TextEditingController();
  FocusNode myFocusNode = new FocusNode();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width ,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/background2.png',
              fit:BoxFit.fill,
            ),
          ),
          Container(
            padding: EdgeInsets.all(50),
            child: Form(
              key: _formKey, //이게 있어야 validator 사용가능
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter First Name';
                      }
                      return null;
                    },
                    cursorColor: Colors.black,
                    controller: _firstnameController,
                    decoration: InputDecoration(
                      filled: true, //textFiled에 배경색을 체음
                      fillColor: Colors.white54,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      labelText: 'First Name',
                      labelStyle: TextStyle(color: Colors.black45),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Surname';
                      }
                      return null;
                    },
                    cursorColor: Colors.black,
                    controller: _surnameController,
                    decoration: InputDecoration(
                      filled: true, //textFiled에 배경색을 체음
                      fillColor: Colors.white54,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      labelText: 'Surname',
                      labelStyle: TextStyle(color: Colors.black45),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Username';
                      }
                      return null;
                    },
                    cursorColor: Colors.black,
                    controller: _usernameController,
                    decoration: InputDecoration(
                      filled: true, //textFiled에 배경색을 체음
                      fillColor: Colors.white54,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      labelText: 'Username',
                      labelStyle: TextStyle(color: Colors.black45),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Password';
                      }
                      return null;
                    },
                    cursorColor: Colors.black,
                    obscureText: true,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      filled: true, //textFiled에 배경색을 체음
                      fillColor: Colors.white54,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.black45),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Confirm password';
                      }
                      return null;
                    },
                    cursorColor: Colors.black,
                    obscureText: true,
                    controller: _cpasswordController,
                    decoration: InputDecoration(
                      filled: true, //textFiled에 배경색을 체음
                      fillColor: Colors.white54,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(color: Colors.black45),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    alignment: Alignment.center,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      color: Colors.white54,
                      onPressed: (){
                        if (_formKey.currentState!.validate()) {
                          Navigator.pop(context);
                        }
                      },
                      child: Text(
                        'Sing in',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
