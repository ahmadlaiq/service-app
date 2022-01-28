import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serviceapp/layanan.dart';

class DetailPembayaran  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Detail Pesanan'),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
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
                        SizedBox(height: 10),
                        Text(
                          "1x Ganti LCD IPhone 13 Ori",
                          style: TextStyle(color: Colors.grey),
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
            SizedBox(
              height: 20,
            ),
            Container(
                color: Colors.grey,
                width: 100,
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Text(
                        'Identitas Pemesan',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Text(
                        'Ihsan Bin Soleh\nJl. Kenangan bersama, Taman, Sidoarjo, 59273\n089645631275',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 300,
            ),
            Container(
                color: Colors.grey,
                width: 100,
                height: 100,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Total Biaya:',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Rp. 720.000,-',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: FlatButton(
                        color: Colors.white,
                        child: Text(
                          'Konfirmasi',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        onPressed: () {
                          Get.toNamed("/navbar");
                        },
                      ),
                    ),
                  ],
                )),
          ],
        ));
  }
}
