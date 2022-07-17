// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/strings.dart';

class icerikOlusturucu extends StatelessWidget {
  static int oankiindex = 0;

  icerikOlusturucu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("${Strings.BURC_ADLARI[oankiindex]} Burcu ve Özellikleri"),
      //   backgroundColor: Colors.orange,
      // ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            //title: Text("Sliver App Bar"),
            backgroundColor: Colors.amber,
            expandedHeight: 200,
            //  floating: true, //Bu elemanlar bitmeden yukarının açılmasını sağlıyor true bırak dene
            pinned:
                true, //Yukarıyı hiç kapatmıyor yani appbardaki yazı kalıyor sadece
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "${Strings.BURC_ADLARI[oankiindex]} Burcu ve Özellikleri",
                style: TextStyle(fontSize: 18),
              ),
              centerTitle: true,
              background: Image.asset(
                "assets/images/${Strings.BURC_RESIM[oankiindex]}_buyuk${(oankiindex + 1).toString()}.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    Strings.BURC_GENEL_OZELLIKLERI[oankiindex],
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ),

          // SliverGrid(
          //     delegate: SliverChildListDelegate(sabitlisteelemanlari),
          //     gridDelegate:
          //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3)),
          // SliverPadding(
          //   padding: const EdgeInsets.all(8.0),
          //   sliver: SliverList(
          //     delegate: SliverChildBuilderDelegate(
          //       _dinamikElemanUretenFonksiyon,
          //       childCount: 13,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Center ozelliklerMethodu() {
    return Center(
      child: Text(
        Strings.BURC_GENEL_OZELLIKLERI[oankiindex],
        style: TextStyle(fontSize: 14),
      ),
    );
  }
}
