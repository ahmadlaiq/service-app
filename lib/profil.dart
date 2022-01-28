import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serviceapp/login.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Profil'),
        automaticallyImplyLeading: false,
      ),
      body: Container(
          margin: EdgeInsets.all(0),
          child: ListView(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/parttern.jpg"),
                        fit: BoxFit.cover)),
                child: Container(
                  width: double.infinity,
                  height: 180,
                  child: Container(
                    alignment: Alignment(0.0, 2.5),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.seekpng.com/png/detail/966-9665493_my-profile-icon-blank-profile-image-circle.png'),
                      radius: 60.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 15),
                child: RaisedButton(
                    color: Colors.white,
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut();
                      Get.toNamed("/login");
                    },
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                          child: Icon(Icons.logout),
                        ),
                        Expanded(
                            child: Text(
                          "Keluar",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    )),
              ),
            ],
          )),
    );
  }
}
