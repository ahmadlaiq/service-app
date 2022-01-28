import 'package:flutter/material.dart';
import 'package:serviceapp/layanan.dart';

class Pesanan extends StatefulWidget {
  @override
  _PesananState createState() => _PesananState();
}

class _PesananState extends State<Pesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Pesanan'),
          automaticallyImplyLeading: false,
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(24, 30, 24, 0),
              child: Text(
                'Pesanan Saya',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff222222),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: InkWell(
                onTap: () {
                  print('berhasil');
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Thumbnail
                    Container(
                      width: 100,
                      height: 70,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        child: Image.asset(
                          "assets/hp.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    //Column
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //judul
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              'Service Jaya Abadi',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                              // softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              // overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            "1x Ganti LCD IPhone 13 Ori",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Menunggu Konfirmasi...",
                            style: TextStyle(color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(80, 4, 0, 0),
                            child: SizedBox(
                              height: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
