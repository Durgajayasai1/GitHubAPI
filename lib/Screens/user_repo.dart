import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class UserRepo extends StatefulWidget {
  const UserRepo({Key? key}) : super(key: key);

  @override
  _UserRepoState createState() => _UserRepoState();
}

class _UserRepoState extends State<UserRepo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Durgajayasai1 > 3D Animation Viewer",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: const FaIcon(
                      FontAwesomeIcons.file,
                      color: Colors.black,
                    ),
                    title: Text(
                      "pubspec.yaml",
                      style: GoogleFonts.poppins(),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const FaIcon(
                      FontAwesomeIcons.folder,
                      color: Colors.black,
                    ),
                    title: Text(
                      "lib",
                      style: GoogleFonts.poppins(),
                    ),
                    onTap: () => Navigator.pushNamed(context, '/source_code'),
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
