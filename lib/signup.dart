import 'package:flutter/material.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 56, 52, 52),
        appBar: AppBar(
          title: Text('Signup'),
          backgroundColor: Color.fromARGB(255, 140, 136, 136),
          leading: const Icon(Icons.person_add_alt_1_outlined),
        ),
        body: Center(
            child: new Form(
          child: SizedBox(
            width: 300.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter Full Name',
                      labelText: 'Full Name',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter Email',
                      labelText: 'Email',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Enter Password',
                      labelText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Enter Confirm Password',
                      labelText: 'Confirm Password',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                  width: 180.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => Login()),
                        ),
                      );
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 140, 136, 136),
                    ),
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}

class Login extends StatelessWidget {
  Login({super.key});
  TextEditingController email = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const Icon(Icons.key),
          title: Text('Login'),
          backgroundColor: Colors.cyan[900],
        ),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
            color: Colors.teal[200],
          ),
          width: 390,
          height: 740,
          margin: const EdgeInsets.fromLTRB(25.0, 20.0, 0.0, 0.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 200.0,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 50.0),
                  child: Image.asset('assets/images/login.PNG'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 20.0),
                  child: SizedBox(
                    width: 300,
                    child: TextFormField(
                      controller: email,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Email';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        hintText: 'Enter Email',
                        labelText: "Email",
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 20.0),
                  child: SizedBox(
                    width: 300,
                    child: TextFormField(
                      controller: pass,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter password';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.key,
                          color: Colors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        hintText: 'Enter Password',
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                  child: SizedBox(
                    width: 140.0,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan[900],
                      ),
                      onPressed: () {
                        debugPrint(email.text);

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => user_info(
                                    user_email: email.text,
                                    user_password: pass.text)));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class user_info extends StatelessWidget {
  String user_email;
  String user_password;
  user_info({required this.user_email, required this.user_password});
  Login log = new Login();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("User Info"),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(85, 0, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'User Email: ' + user_email,
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                'User Password:' + user_password,
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
