// ignore_for_file: must_be_immutable, prefer_const_constructors, avoid_unnecessary_containers, unnecessary_string_interpolations, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/icerik.dart';
import 'package:flutter_burc_rehberi/strings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  List<Burclar> burclar = List.generate(
    12,
    (index) => Burclar(
      index,
      Strings.BURC_ADLARI[index].toString(),
      Strings.BURC_TARIHLERI[index].toString(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Burçlar Listesi'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(2),
              child: Card(
                child: ListTile(
                  title: Text(burclar[index].isim),
                  subtitle: Text(burclar[index].tarihbilgisi),
                  leading: Image(
                    height: 250,
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "assets/images/${Strings.BURC_RESIM[index] + (index + 1).toString()}.png",
                    ),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: Colors.red.shade300,
                    size: 30,
                  ),
                  onTap: () {
                    icerikOlusturucu.oankiindex = index;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (redContext) => icerikOlusturucu(),
                      ),
                    );
                  },
                ),
              ),
            );
          },
          itemCount: burclar.length,
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 0,
            );
          },
        ),
      ),
    );
  }
}

class Burclar {
  final int id;
  final String isim;
  final String tarihbilgisi;

  Burclar(this.id, this.isim, this.tarihbilgisi);
}
