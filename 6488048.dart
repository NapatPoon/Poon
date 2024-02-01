import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product Layout Demo Homepage'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product Listing")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox1(
              
                name: "Samsung Smart TV",
                description: "Best TV for family!",
                price: 28000,
                image: "SamsungTV.jpg"
            ),
            ProductBox1(
                name: "Western Digital SSD",
                description: "Most reliable SSD",
                price: 5000,
                image: "SSD.jpg"),
            ProductBox1(
                name: "Sony walkman",
                description: "Best music player",
                price: 4700,
                image: "Sony.jpg"),
            ProductBox2(
                name: "Ipad",
                description: "Best Tablet",
                price: 30000,
                imgUrl: "data:image/jpeg;base64,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"),
               ProductBox2(
                name: "Playstaiton",
                description: "Number one colsole",
                price: 30000,
                imgUrl: "https://upload.wikimedia.org/wikipedia/commons/8/88/Immagine_Playstation_5.jpg"),
             ProductBox2(
                name: "Samsung galaxy flip",
                description: "First flipable phone",
                price: 60000,
                imgUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Samsung_Galaxy_Z_Flip.jpg/2560px-Samsung_Galaxy_Z_Flip.jpg")
            
            
          ],




        ));
  }
}

class ProductBox1 extends StatelessWidget {
  ProductBox1(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);

  final String name;

  final String description;

  final int price;

  final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset(
                  "assets/appimages/" + image, // images from local directory

                  height: 100,
                  width: 100),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}

class ProductBox2 extends StatelessWidget {
  ProductBox2(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.imgUrl})
      : super(key: key);

  final String name;

  final String description;

  final int price;

  final String imgUrl;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.network(imgUrl, // images from local directory

                  height: 100,
                  width: 100),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}
