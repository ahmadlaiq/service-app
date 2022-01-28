import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:serviceapp/bottomnavbar.dart';
import 'package:serviceapp/detail-pembayaran.dart';
import 'package:serviceapp/home.dart';
import 'package:serviceapp/layanan.dart';
import 'package:serviceapp/login.dart';
import 'package:get/get.dart';
import 'package:serviceapp/pesanan.dart';
import 'package:serviceapp/profil.dart';
import 'package:serviceapp/register.dart';
import 'package:serviceapp/toko.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      getPages: [
        GetPage(name: "/login", page: () => LoginPage()),
        GetPage(name: "/register", page: () => RegisterPage()),
        GetPage(name: "/home", page: () => Home()),
        GetPage(name: "/toko", page: () => Toko()),
        GetPage(name: "/layanan", page: () => Layanan()),
        GetPage(name: "/detail-pesanan", page: () => DetailPembayaran()),
        GetPage(name: "/navbar", page: () => Navbar()),
      ],
    );
  }
}
