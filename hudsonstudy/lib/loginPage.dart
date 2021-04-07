import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
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
                  SizedBox(height: 200),
                  Text('     ID',style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.w300)),
                  SizedBox(height: 10),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Password';
                      }
                      return null;
                    },
                    cursorColor: Colors.black,
                    controller: _usernameController,
                    decoration: InputDecoration(
                      filled: true, //textFiled에 배경색을 체음
                      fillColor: Colors.white54,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      labelText: 'Username',
                      labelStyle: TextStyle(color: Colors.black45),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text('     Password',style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.w300)),
                  SizedBox(height: 10),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Password';
                      }
                      return null;
                    },
                    cursorColor: Colors.black,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      filled: true, //선택된 textfield에 시각적인 강조를 해주는 것. 색이 변한다거나.
                      fillColor: Colors.white54,
                      focusColor: Colors.white54,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.black45),
                    ),
                    obscureText: true, // input을 가려줌.
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    alignment: Alignment.center,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      color: Colors.white54,
                      onPressed: (){
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushNamed(context,'/homePage');
                        }
                      },
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 220),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap:(){
                          Navigator.pushNamed(context, '/singupPage');
                        },
                        child: Text(
                          ' SING UP ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.red[100],
                          ),
                        ),
                      ),
                      Text(
                        "here",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


