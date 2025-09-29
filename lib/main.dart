import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "Welcome": (context) => Welcome(),
        "Register": (context) => Register(),
        "register": (context) => register(),
        "OTP": (context) => OTP(),
        "Login": (context) => Login(),
        "ForgotPassword": (context) => ForgotPassword(),
        "OTP2": (context) => OTP2(),
        "creat2": (context) => creat2(),
        "PasswordChange":  (context) => PasswordChange(),
        "StaffScreen": (context) => StaffScreen(),
      },

      home: Splash(),
    );
  }
}

//Splash screen

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash>{
  @override
  void initState() {
    super.initState();
    // Wait for 3 seconds, then navigate
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Welcome()),
      );
    });
  }


  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(11, 11, 66, 1),
      body: Center(
        child: Image.asset("assets/images/Logo.png",
          height: 158,
          width: 170,
        ),
      ),
    );
  }
}


//WELCOME
class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}
class _WelcomeState extends State<Welcome>{
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 67),
                Image.asset(
                  "assets/images/Logo.png",
                  height: 71,
                  width: 77,

                ),
                SizedBox(height:  89),
                Center(
                  child: Text(
                    "Teachwise",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Color.fromRGBO(11, 11, 66, 1),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "smart solution for everyday \n           teaching needs",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 32.0, bottom: 170.0),
                  child: Align(
                    alignment: Alignment(1.6, 2.4),
                    child: Image.asset(
                      "assets/images/pic.png",
                      fit: BoxFit.cover,
                      height: 200,
                    ),
                  ),
                ),

                Center(
                  child: SizedBox(
                    width: 300,
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "Register");
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF001738),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                              ),
                              child: Text(
                                "Register",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: SizedBox(
                            height: 50,

                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "Login");
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFFFC700),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(13),
                                    bottomRight: Radius.circular(13),
                                  ),
                                ),
                              ),
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
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
          ),
        ),
    );
  }
}


//LOGIN

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(11, 11, 66, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Back arrow button
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: Size(30, 30),
                    ),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Logo image
                Center(
                  child: Image.asset(
                    "assets/images/Logo.png",
                    height: 77,
                    width: 77,
                  ),
                ),
                SizedBox(height: 30),
                // Title text
                Text(
                  "Hello! Register to get\nstarted",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),

                // Username field
                TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                    EdgeInsets.symmetric(horizontal:10, vertical:12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(height: 10),

                // Email field
                TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                    EdgeInsets.symmetric(horizontal:10, vertical:12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(height: 10),

                // Password field
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(height: 10),

                // Confirm password field
                TextField(
                  decoration: InputDecoration(
                    hintText: "Confirm password",
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(height: 17),

                // Register button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "register");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFC700),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 16),

                // Divider with text
                Row(
                  children: [
                    Expanded(child: Divider(color: Colors.grey.shade400)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "Or sign up with",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Expanded(child: Divider(color: Colors.grey.shade400))
                  ],
                ),

                SizedBox(height: 20),

                // Social buttons row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Facebook
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 47),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Image.asset(
                        "assets/images/facebook.png",
                        height: 20,
                        width: 20,
                      ),
                    ),
                    SizedBox(width: 10),

                    // Google
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 44),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Image.asset(
                        "assets/images/google.png",
                        height: 20,
                        width: 20,
                      ),
                    ),
                    SizedBox(width: 10),

                    // Apple
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Image.asset(
                        "assets/images/apple.png",
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                // Login now text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "Login");
                      },
                      child: Text(
                        "Login Now",
                        style: TextStyle(
                          color: Colors.teal.shade300,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:  Color.fromRGBO(11, 11, 66, 1),
      body:SafeArea(
        child: Padding(padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(30, 30),
                  ),
                  child: Icon(Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),

              SizedBox(height: 50,),
              Center(
                child: Image.asset("assets/images/Logo.png",
                  height: 70,
                ),
              ),
              SizedBox(height: 60,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Almost there,\nPick a category",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 50,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "OTP");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.all(8),
                  minimumSize: Size(390, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text("School",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 14,),

              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "OTP");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.all(8),
                  minimumSize: Size(390,50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                  ),
                ),

                child: Text("Staff",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                  ),
                ),
              ),


              SizedBox(height: 14,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "OTP");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.all(8),
                    minimumSize: Size(390, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                ),
                child: Text("Learners and guadians",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                  ),
                ),
              ),

              SizedBox(height: 160,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),

                  GestureDetector(
                    onTap: (){Navigator.pushNamed(context, "Login");},
                    child: Text(
                      "Login Now",
                      style: TextStyle(
                        color: Colors.teal.shade300,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OTP extends StatefulWidget{
  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build (BuildContext context){
    return Scaffold(

      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(padding: EdgeInsets.all(16),
         child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    minimumSize:Size(40, 40),
                  ),

                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
              ),

              SizedBox(height: 50,),

              Align(
                alignment: Alignment.centerLeft,
                child: Text("OTP Verification",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Enter the verification code we just sent on your \nemail adress.",
                  style: TextStyle(
                    fontSize: 13,
                    color: Color.fromRGBO(131, 139, 161, 1),
                  ),
                ),
              ),

              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) {
                  return SizedBox(
                    width: 60,
                    height: 50,
                    child: TextField(
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontSize: 24, // Bigger text size
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFE8ECF4),
                        counterText: '',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none, // No black line
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF35C2C1)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onChanged: (value) {
                        // Move to next field logic
                      },
                    ),
                  );
                }),
              ),
                SizedBox(height: 60,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "creat2");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.all(8),
                      minimumSize: Size(500, 54),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text("Verify",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    ),
                  ),
              SizedBox(height: 300,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn't received code? ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold

                  ),
                  ),

                  GestureDetector(
                    onTap: (){},
                    child: Text("Resend",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.teal.shade300,
                    ),
                    ),
                  ),
                ],
              ),
            ],
          ),
         ),
        ),
      ),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(11, 11, 66, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Back arrow button
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: Size(30, 30),
                    ),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Logo image
                Center(
                  child: Image.asset(
                    "assets/images/Logo.png",
                    height: 77,
                    width: 77,
                  ),
                ),
                SizedBox(height: 30),
                // Title text
                Text(
                  "Hello! Login to get\ncontinue",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),

                // Username field
                TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                    EdgeInsets.symmetric(horizontal:10, vertical:12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(height: 10),

                // Email field
                TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                    EdgeInsets.symmetric(horizontal:10, vertical:12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(height: 10),

                // Password field
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(height: 10),

                // Confirm password field
                TextField(
                  decoration: InputDecoration(
                    hintText: "Confirm password",
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(height: 17),

                // Register button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "ForgotPassword");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFC700),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 16),

                // Divider with text
                Row(
                  children: [
                    Expanded(child: Divider(color: Colors.grey.shade400)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "Or sign up with",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Expanded(child: Divider(color: Colors.grey.shade400))
                  ],
                ),

                SizedBox(height: 20),

                // Social buttons row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Facebook
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 47),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Image.asset(
                        "assets/images/facebook.png",
                        height: 20,
                        width: 20,
                      ),
                    ),
                    SizedBox(width: 10),

                    // Google
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 44),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Image.asset(
                        "assets/images/google.png",
                        height: 20,
                        width: 20,
                      ),
                    ),
                    SizedBox(width: 10),

                    // Apple
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Image.asset(
                        "assets/images/apple.png",
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                // Login now text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "Login");
                      },
                      child: Text(
                        "Login Now",
                        style: TextStyle(
                          color: Colors.teal.shade300,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState(); // fixed here
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) { // fixed 'Context' to 'context'
    return Scaffold(

      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pop(context);
                  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize:Size(40, 40),
                    ),

                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                ),

                SizedBox(height: 50,),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Forgot Password?",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Dont worry it occurs please enter the email \naddress linked with your account",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromRGBO(131, 139, 161, 1),
                    ),
                  ),
                ),

                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                    EdgeInsets.symmetric(horizontal:10, vertical:12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(height: 50,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "OTP");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: EdgeInsets.all(8),
                    minimumSize: Size(500, 54),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text("Send Code",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 300,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Didn't received code? ",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold

                      ),
                    ),

                    GestureDetector(
                      onTap: (){},
                      child: Text("Resend",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.teal.shade300,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OTP2 extends StatefulWidget{
  @override
  _OTP2State createState() => _OTP2State();
}

class _OTP2State extends State<OTP2> {
  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    minimumSize:Size(40, 40),
                  ),

                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
              ),

              SizedBox(height: 50,),

              Align(
                alignment: Alignment.centerLeft,
                child: Text("OTP Verification",
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Enter the verification code we just sent on your \nemail adress.",
                  style: TextStyle(
                    fontSize: 17,
                    color: Color.fromRGBO(131, 139, 161, 1),
                  ),
                ),
              ),

              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) {
                  return SizedBox(
                    width: 70,
                    height: 60,
                    child: TextField(
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontSize: 24, // Bigger text size
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFE8ECF4),
                        counterText: '',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none, // No black line
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF35C2C1)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onChanged: (value) {
                        // Move to next field logic
                      },
                    ),
                  );
                }),
              ),
              SizedBox(height: 60,),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "creat2");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.all(8),
                  minimumSize: Size(200, 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text("Verify",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 300,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn't received code? ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold

                    ),
                  ),

                  GestureDetector(
                    onTap: (){},
                    child: Text("Resend",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.teal.shade300,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class creat2 extends StatefulWidget {
  @override
  _creat2State createState() => _creat2State();
}

class _creat2State extends State<creat2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView( // ✅ scroll view added here
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: Size(41, 41),
                    ),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),

                SizedBox(height: 27),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Create new password?",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Your new password must be unique from those\npreviously used",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(131, 139, 161, 1),
                    ),
                  ),
                ),

                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    hintText: "New Password",
                    filled: true,
                    fillColor: Color.fromRGBO(232, 236, 244, 1),
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(131, 139, 161, 1),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 9),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                    filled: true,
                    fillColor: Color.fromRGBO(232, 236, 244, 1),
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(131, 139, 161, 1),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 9),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "PasswordChange");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(11, 11, 66, 1),
                    padding: EdgeInsets.all(8),
                    minimumSize: Size(430, 57),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Reset Password",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),

                SizedBox(height: 310),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Remember Password? ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "Login");
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.teal.shade300,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class PasswordChange extends StatefulWidget {
  @override
  _PasswordChangeState createState() => _PasswordChangeState();
}

class _PasswordChangeState extends State<PasswordChange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20),
        child:Column(
          children: [
        SizedBox(height: 270,),
        Align(
          alignment: Alignment.center,
          child:  Image.asset("assets/images/Sticker.png",
           

          ),
        ),

         SizedBox(height:30),
         Text("Password changed!",
             style: TextStyle(
               fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(30, 35, 44, 1),
        ),
     ),

            Text("Your password has been changed \n                    Successfully",
              style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(131, 145, 161, 1),
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "StaffScreen");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(30, 35, 44, 1),
                  minimumSize: Size(430, 57),
                  padding: EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                "Back to Login",
                  style: TextStyle(
                    color: Colors.white,
                  ),
            ),
            ),
          ],
        ) ,
      ),
      ),
    );
  }
}




class StaffScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Header
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            decoration: BoxDecoration(
              color: Color(0xFF071C4D),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hi, Mega',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Image.asset("assets/images/Logo.png"),
                ),
              ],
            ),
          ),


          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0xFF071C4D),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/Logo.png'), // your image
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TabButton(label: "School", isSelected: false),
                      TabButton(label: "Staff", isSelected: true),
                      TabButton(label: "Guardian", isSelected: false),
                    ],
                  ),
                )
              ],
            ),
          ),

          SizedBox(height: 130),

          // No access image and message
          Column(
            children: [
              Icon(Icons.lock_outline, size: 100, color: Colors.grey[300]),
              SizedBox(height: 150),
              Text(
                'OOPS NO STAFF ACCOUNT',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              Text(
                "You don’t have permission to view",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
SizedBox(height: 30,),


          // Create button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  'Create Staff Account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          SizedBox( height: 30),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300],
                minimumSize: Size(360, 60),
                padding: EdgeInsets.symmetric(vertical: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
              child:
              Text(
                "Footer nav",
                style: TextStyle(
                   color:  Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ),
        ],
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  final String label;
  final bool isSelected;

  const TabButton({required this.label, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: isSelected ? Colors.amber : Color(0xFF071C4D),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.black : Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}



