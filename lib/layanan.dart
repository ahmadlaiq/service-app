import 'package:flutter/material.dart';
import 'package:serviceapp/detail-pembayaran.dart';
import 'package:serviceapp/model/layananmodel.dart';

class Layanan extends StatefulWidget {
  @override
  _LayananState createState() => _LayananState();
}

class _LayananState extends State<Layanan> {
  List<LayananModel> listLayananModel = [];

  initHome() async {
    listLayananModel = await LayananModel.getLayananModel();
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
          title: Text('Daftar Layanan'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              if (listLayananModel != null) {
                
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DetailPembayaran()));
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
                              "assets/ac.png",
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
                                  '${listLayananModel[index].nama}',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                  // softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  // overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                height: 50,
                                width: 150,
                                child: Text(
                                  "Harga: ${listLayananModel[index].harga}",
                                  style: TextStyle(color: Colors.grey),
                                ),
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
            itemCount: listLayananModel.length));
  }
}
