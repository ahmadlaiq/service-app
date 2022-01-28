import 'package:flutter/material.dart';
import 'package:serviceapp/layanan.dart';
import 'package:serviceapp/model/tokomodel.dart';

class Toko extends StatefulWidget {
  @override
  _TokoState createState() => _TokoState();
}

class _TokoState extends State<Toko> {
  List<TokoModel> listTokoModel = [];

  initHome() async {
    listTokoModel = await TokoModel.getTokoModel();
    setState(() {});
  }

  @override
  void initState() {
    initHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Daftar Toko'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              if (listTokoModel != null) {
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Layanan()));
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Thumbnail
                        Container(
                          width: 100,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            child: Image.asset(
                              "assets/toko.png",
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
                                  '${listTokoModel[index].nama}',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                  // softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  // overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(height: 15),
                              Container(
                                height: 50,
                                width: 150,
                                child: Text(
                                  "Lokasi: ${listTokoModel[index].alamat}",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Buka: ${listTokoModel[index].jambuka}\nTutup: ${listTokoModel[index].jamtutup}",
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
                );
              } else {
                return Center(
                  child: Text('No Data'),
                );
              }
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: listTokoModel.length));
  }
}
