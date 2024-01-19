import 'package:flutter/material.dart';

import 'colors.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran Yüksekliği : $ekranYuksekligi");
    print("Ekran Genişliği  : $ekranGenisligi");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pizza", style: TextStyle(color: beyaz, fontFamily: "Lemon", fontSize: 20, fontWeight: FontWeight.bold),),
        backgroundColor: appBarRenk,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.0),
            child: Text("Beef Cheese",style: TextStyle(fontSize: 36,color: Colors.red,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: EdgeInsets.all(2.0),
            child: Image.asset("resimler/pizza_resim.png"),
          ),
          Padding(
            padding: EdgeInsets.all(2.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(icerik: "Cheese"),
                Chip(icerik: "Sausage"),
                Chip(icerik: "Olive"),
                Chip(icerik: "Pepper"),

              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(2.0),
            child: Column(
              children: [
                Text("20 min", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Padding(
                  padding: EdgeInsets.all(ekranGenisligi/25),
                  child: Text("Delivery", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),
                ),
                Text("Meat Lover, get ready to meet your pizza", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(2.0),
            child: Row(
              children: [
                Text("\$ 5.98", style: TextStyle(fontSize: 44,fontWeight: FontWeight.bold,color: Colors.red),textAlign: TextAlign.center,),
                const Spacer(),
                SizedBox(width: ekranGenisligi/2,height: ekranYuksekligi/14,
                  child: TextButton(onPressed: (){},
                    child: Text("Add To Card",style: TextStyle(color: beyaz,fontSize: 18),),
                    style: TextButton.styleFrom(
                      backgroundColor: appBarRenk,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Chip extends StatelessWidget {
  String icerik;
  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      child: Text(icerik,style: TextStyle(color: beyaz),),
      style: TextButton.styleFrom(backgroundColor: appBarRenk),
    );
  }
}
