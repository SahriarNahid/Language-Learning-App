import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:langapp/screens/profile_page.dart';
import 'package:lottie/lottie.dart';

class ResourceDownloading extends StatefulWidget {
  late User user;
  late ColorScheme dync;
  ResourceDownloading({required this.user, required this.dync});

  @override
  State<ResourceDownloading> createState() => _ResourceDownloadingState();
}

class _ResourceDownloadingState extends State<ResourceDownloading> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => ProfilePage(
            user: widget.user,
            dync: widget.dync,
          ),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
          child: new LottieBuilder.asset("assets/animation_llgwflgi.json")),
    );
  }
}
