import 'package:flutter/material.dart';
import 'package:material_text_fields/material_text_fields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  static const routeName = '/profile-screen';

  final TextEditingController _emailController = TextEditingController();

  void handleTextFieldOnTap(String text) {
    print(
        "#############################################################################");
    print(text);
    print(
        "#############################################################################");
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        const Center(
            child: Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        InkWell(
          onTap: () {
            print(
                "Wtf why is it not working????????????????????????????????????????");
          },
          child: Text("Hello?"),
        ),
        InkWell(
          onTap: () {
            debugPrint("Hello from here?????");
          },
          child: Center(
            child: MaterialTextField(
              keyboardType: TextInputType.emailAddress,
              hint: 'Email',
              labelText: 'Email',
              textInputAction: TextInputAction.next,
              prefixIcon: Icon(Icons.email_outlined),
              controller: _emailController,
              onChanged: (text) => handleTextFieldOnTap(text),
            ),
          ),
        ),
      ],
    )));
  }
}
