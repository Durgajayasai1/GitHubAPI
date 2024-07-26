import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserRepositories extends StatefulWidget {
  const UserRepositories({Key? key}) : super(key: key);
  // final String username;

  @override
  _UserRepositoriesState createState() => _UserRepositoriesState();
}

class _UserRepositoriesState extends State<UserRepositories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "@Durgajayasai1",
          style: GoogleFonts.poppins(color: Colors.white, fontSize: 18),
        ),
        leading: Container(
          padding: const EdgeInsets.all(8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              "assets/logo.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const FaIcon(
              FontAwesomeIcons.rightFromBracket,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Your Repositories",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text(
                      "3D Animation Viewer",
                      style: GoogleFonts.poppins(color: Colors.black),
                    ),
                    leading: const FaIcon(
                      FontAwesomeIcons.codeBranch,
                      color: Colors.black,
                    ),
                    trailing: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () => Navigator.pushNamed(context, '/user_repo'),
                  ),
                  ListTile(
                    title: Text(
                      "3D Animation Viewer",
                      style: GoogleFonts.poppins(color: Colors.black),
                    ),
                    leading: const FaIcon(
                      FontAwesomeIcons.codeBranch,
                      color: Colors.black,
                    ),
                    trailing: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () => Navigator.pushNamed(context, '/user_repo'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
