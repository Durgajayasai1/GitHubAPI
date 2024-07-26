import 'package:flutter/material.dart';
import 'package:githubapi/components/my_button.dart';
import 'package:google_fonts/google_fonts.dart';

class ConnectScreen extends StatefulWidget {
  ConnectScreen({Key? key}) : super(key: key);

  @override
  State<ConnectScreen> createState() => _ConnectScreenState();
}

void connectAccount(BuildContext context) {
  Navigator.pushNamed(context, '/user_repositories');
}

class _ConnectScreenState extends State<ConnectScreen> {
  final usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset('assets/github-logo.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black26),
                          borderRadius: BorderRadius.circular(10)),
                      border: InputBorder.none,
                      hintText: 'Enter your github username',
                      hintStyle: GoogleFonts.poppins(color: Colors.grey)),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            MyButton(
              text: 'Connect Account',
              onTap: () => connectAccount(context),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "*View your works here",
              style: GoogleFonts.poppins(color: Colors.grey[600]),
            )
          ],
        ),
      )),
    );
  }
}
