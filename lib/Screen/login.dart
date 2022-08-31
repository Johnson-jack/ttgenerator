import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_easyloading/flutter_easyloading.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _validate = false;
  bool _validate1 = false;

  @override
  void configLoading() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle
      ..loadingStyle = EasyLoadingStyle.dark
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = Colors.yellow
      ..backgroundColor = Colors.green
      ..indicatorColor = Colors.yellow
      ..textColor = Colors.yellow
      ..maskColor = Colors.blue.withOpacity(0.5)
      ..userInteractions = true
      ..dismissOnTap = true;
    //..customAnimation = CustomAnimation();
  }

  TextEditingController _username = TextEditingController();
  TextEditingController _passkey = TextEditingController();

  Widget build(BuildContext context) {
    print('Height ' + MediaQuery.of(context).size.height.toString());
    print('Width ' + MediaQuery.of(context).size.width.toString());
    var url = 'https://rabbiapp.org/timetable/login_account.php';
    Future<void> logintoaccount() async {
      EasyLoading.show(status: 'Verifying Credential...');
      var response = await http.post(Uri.parse(url), body: {
        "mobile_no": _username.text,
        "pass_key": _passkey.text,
      });
      print(response.body);

      if (response.body.toString() == 'Success') {
        print('Success');
        EasyLoading.dismiss();
        _username.clear();
        _passkey.clear();
      } else if (response.body.toString() == 'Error') {
        EasyLoading.showError('Invalid Credential');
      }
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height - 200,
            width: MediaQuery.of(context).size.width - 100,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 19,
                offset: Offset(2, 2),
              ),
              BoxShadow(
                color: Colors.black12,
                blurRadius: 19,
                offset: Offset(-2, -2),
              ),
            ], borderRadius: BorderRadius.circular(25), color: Colors.blue),
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.7,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Time Table Generator',textAlign: TextAlign.start, style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold, fontFamily: 'JosefinSans'),),
                        SizedBox(height: 35,),
                        Padding(
                          padding: const EdgeInsets.only(left: 35.0),
                          child: Row(
                            children: [
                            Icon(Icons.event, color:Colors.grey[300] ,),
                            Text('Automatic Time Table Generator', style: TextStyle(color: Colors.grey[300], fontWeight: FontWeight.w600, fontFamily: 'JosefinSans'),)
                          ],),
                        ),
                        SizedBox(height: 25,),
                        Padding(
                          padding: const EdgeInsets.only(left: 35.0),
                          child: Row(children: [
                            Icon(Icons.phone_android, color:Colors.grey[300] ,),
                            Text('Mobile App for Faculties', style: TextStyle(color: Colors.grey[300], fontWeight: FontWeight.w600, fontFamily: 'JosefinSans'),)
                          ],),
                        ),
                        SizedBox(height: 25,),
                        Padding(
                          padding: const EdgeInsets.only(left: 35.0),
                          child: Row(children: [
                            Icon(Icons.speed, color:Colors.grey[300] ,),
                            Text('Optimized performance', style: TextStyle(color: Colors.grey[300], fontWeight: FontWeight.w600, fontFamily: 'JosefinSans'),)
                          ],),
                        ),
                        SizedBox(height: 25,),
                        Padding(
                          padding: const EdgeInsets.only(left: 35.0),
                          child: Row(children: [
                            Icon(Icons.security, color:Colors.grey[300] ,),
                            Text('Secured System', style: TextStyle(color: Colors.grey[300], fontWeight: FontWeight.w600, fontFamily: 'JosefinSans'),)
                          ],),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            bottomRight: Radius.circular(25))),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          TextField(
                            controller: _username,
                            decoration: InputDecoration(
                                errorText: _validate
                                    ? 'Username Can\'t Be Empty'
                                    : null,
                                border: new OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.teal)),
                                label: Text('Username'),
                                icon: Icon(Icons.person)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            controller: _passkey,
                            obscureText: true,
                            decoration: InputDecoration(
                                errorText: _validate1
                                    ? 'Password Can\'t Be Empty'
                                    : null,
                                border: new OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.teal)),
                                label: Text('Password'),
                                icon: Icon(Icons.key)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              print('Clicked');
                              if (_username.text.isEmpty) {
                                setState(() {
                                  _username.text.isEmpty
                                      ? _validate = true
                                      : _validate = false;
                                });
                              } else if (_passkey.text.isEmpty) {
                                setState(() {
                                  _passkey.text.isEmpty
                                      ? _validate1 = true
                                      : _validate = false;
                                });
                              } else if (_username.text.isNotEmpty &&
                                  _passkey.text.isNotEmpty) {
                                setState(() {
                                  _passkey.text.isEmpty
                                      ? _validate1 = false
                                      : _validate = false;
                                  _username.text.isEmpty
                                      ? _validate = false
                                      : _validate = false;
                                });
                                logintoaccount();
                              }
                            },
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Container(
                                alignment: Alignment.center,
                                width: 200,
                                height: 50,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.blue[200]!,
                                          Colors.indigo
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 22),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      builder: EasyLoading.init(),
    );
  }
}
