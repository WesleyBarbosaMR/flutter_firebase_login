import 'package:flutter/material.dart';
import 'package:flutter_firebase_login/pages/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // * Our Form Key
  final _formKey = GlobalKey<FormState>();

  // * Editing Controllers
  final fstNmController = TextEditingController();
  final scdNmController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final cfmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // * First Name Field
    final fstNmField = TextFormField(
      autofocus: false,
      controller: fstNmController,
      keyboardType: TextInputType.name,
      // ! Implement this validator:(){}
      onSaved: (value) {
        fstNmController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Digite seu nome.",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    // * Second Name Field
    final scdNmField = TextFormField(
      autofocus: false,
      controller: scdNmController,
      keyboardType: TextInputType.name,
      // ! Implement this validator:(){}
      onSaved: (value) {
        scdNmController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Digite seu sobrenome.",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

// * Email Field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      // ! Implement this validator:(){}
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Digite seu email.",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

// * Password Field
    final passField = TextFormField(
      autofocus: false,
      controller: passController,
      obscureText: true,
      // ! Implement this validator:(){}
      onSaved: (value) {
        passController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Digite sua senha.",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    // * Confirm Password Field
    final cfmPassField = TextFormField(
      autofocus: false,
      controller: cfmPassController,
      obscureText: true,
      // ! Implement this validator:(){}
      onSaved: (value) {
        cfmPassController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Confirme sua senha.",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    // * Register Button
    final registerButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.deepPurpleAccent,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: Text(
          "Cadastrar-se",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );

    // * Register Page
    return Scaffold(
      // * Page Style
      backgroundColor: Colors.white,
      //* App Bar Page
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // * Passing to the root
            Navigator.of(context).pop();
          },
        ),
      ),
      // * Page Body
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 180,
                      child: Image.asset(
                        "assets/login_image.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 35),
                    fstNmField,
                    SizedBox(height: 10),
                    scdNmField,
                    SizedBox(height: 10),
                    emailField,
                    SizedBox(height: 10),
                    passField,
                    SizedBox(height: 10),
                    cfmPassField,
                    SizedBox(height: 15),
                    registerButton,
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Já possui uma conta? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                          },
                          child: Text(
                            " Volte ao Login aqui!",
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
