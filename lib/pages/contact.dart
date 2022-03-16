import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';



class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Linkify(
              onOpen: _onOpen,

              text: "This terrible app was made by Tom Jefford (1916432) (DON'T) reach me on \n\nMail: 1916432@swansea.ac.uk",
            ),
            Linkify(
              onOpen: _onOpen,
              options: LinkifyOptions(humanize: true),
                text: 'All images, content and information is credited to https://www.fitsri.com/articles/surya-namaskar-types'
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onOpen(LinkableElement link) async {
      if (await canLaunch(link.url)) {
    await launch(link.url);
    } else {
    throw 'Could not launch $link';
    }
  }
}

