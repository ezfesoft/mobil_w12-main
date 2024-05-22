// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:js_util';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobil Hafta 12',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //--------------
  //--------------
  //--------------
  //-------------- Değişkenler bu kısımda tanımlanacak.
  List<String> resimler = [
    'https://picsum.photos/id/22/367/267',
    'https://picsum.photos/id/21/367/267',
    'https://picsum.photos/id/20/367/267',
    'https://picsum.photos/id/19/367/267',
    'https://picsum.photos/id/18/367/267',
    'https://picsum.photos/id/17/367/267',
    'https://picsum.photos/id/16/367/267',
    'https://picsum.photos/id/15/367/267',
    'https://picsum.photos/id/14/367/267',
    'https://picsum.photos/id/13/367/267',
    'https://picsum.photos/id/12/367/267',
    'https://picsum.photos/id/11/367/267',
    'https://picsum.photos/id/13/367/267',
    'https://picsum.photos/id/12/367/267',
    'https://picsum.photos/id/11/367/267',
  ];
  //--------------
  //--------------
  //--------------
  //--------------
  //--------------
  //--------------
  //--------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white70,
          title: Text("Instagram"),
          actions: [
            IconButton(
              icon: Icon(Icons.heart_broken),
              color: Colors.red,
              onPressed: () {},
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.message,
              color: Colors.red,
            ),
          ],
        ),
        body:
            //--------------
            //--------------
            //--------------Kodları aşağıya yazınız.
            //--------------
            Column(
          children: [
            //-----------------------HIKAYE BÖLÜMÜ
            Container(
              //color: Colors.blue,
              height: 100,
              child: ListView.builder(
                padding: EdgeInsets.all(10),
                itemCount: resimler.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                          height: 75,
                          width: 75,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [Colors.purple, Colors.yellow])),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              resimler[index],
                              fit: BoxFit.cover,
                            ),
                          )
                          //
                          ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  );
                },
              ),
            ),
            //-----------------------HIKAYE BÖLÜMÜ BİTİŞ
            //-----------------------POST BÖLÜMÜ
            SizedBox(
              height: MediaQuery.of(context).size.height - 250,
              child: ListView.builder(
                itemCount: resimler.length,
                padding: EdgeInsets.all(10),
                itemBuilder: (context, index) {
                  return Container(
                    //color: Colors.yellow,
                    height: MediaQuery.of(context).size.height - 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                                height: 75,
                                width: 75,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          Colors.purple,
                                          Colors.yellow
                                        ])),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.network(
                                    'https://picsum.photos/id/11/367/267',
                                    fit: BoxFit.cover,
                                  ),
                                )
                                //
                                ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Süleyman Ezdemir"),
                            Spacer(),
                            Icon(Icons.settings)
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width,
                          child: Image.network(
                            resimler[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.heart_broken,
                              size: 25,
                              color: Colors.black38,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.message,
                              size: 25,
                              color: Colors.black38,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.send,
                              size: 25,
                              color: Colors.black38,
                            ),
                            Spacer(),
                            Icon(
                              Icons.save,
                              size: 25,
                              color: Colors.black38,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        Text("1523 Beğeni")
                      ],
                    ),
                  );
                },
              ),
            ),
            //-----------------------POST BÖLÜMÜ BİTİŞ
            Spacer(),
            //-----------------------ALT BUTONLAR BÖLÜMÜ
            Divider(),
            Container(
              //color: Colors.blue,
              height: 75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.home,
                        size: 50,
                        color: Colors.black38,
                      )),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: 50,
                        color: Colors.black38,
                      )),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.plus_one,
                        size: 50,
                        color: Colors.black38,
                      )),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.video_file,
                        size: 50,
                        color: Colors.black38,
                      )),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.black38,
                      )),
                  Spacer(),
                ],
              ),
            ),
            //-----------------------ALT BUTONLAR BÖLÜMÜ BİTİŞ
          ],
        )

        //--------------Kodları yukarıya yazınız.
        //--------------
        //--------------
        //--------------
        //--------------
        //--------------
        //--------------
        //--------------
        //--------------
        //--------------
        //--------------
        //--------------
        //--------------

        );
  }
}
