import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeModalAdd extends StatefulWidget {
  const HomeModalAdd({ key }) : super(key: key);

  @override
  _HomeModalAddState createState() => _HomeModalAddState();
}

class _HomeModalAddState extends State<HomeModalAdd>{

  final List<String> imageList = [
    'assets/Rectangle1.png',
    'assets/Rectangle1.png',
    'assets/Rectangle1.png'
  ];

  @override 
  Widget build(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        child: Form(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                ),
                items: imageList.map((e) => ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(
                        e,
                        width: 226,
                        height: 258,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                )).toList(),
              ),
              SizedBox(height: 30,),
              const Text(
                'Xadrez Color',
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style:TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                  color: Color.fromARGB(255, 119, 9, 42)
                ),
              ),
              SizedBox(height: 20,),
              const Text(
                'Lorem Ipsum is simply dummy text of the printing \nand typesetting industry, dummy text of the printing \nand typesetting industry',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style:TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color.fromARGB(213, 49, 47, 47),
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Color.fromARGB(255, 119, 9, 42),
                    child: Text(
                      'P',
                      style: TextStyle(color: Colors.white)
                    ),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Color.fromARGB(255, 119, 9, 42),
                    child: Text(
                      'M',
                      style: TextStyle(color: Colors.white),
                    ),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Color.fromARGB(255, 119, 9, 42),
                    child: Text(
                      'G',
                      style: TextStyle(color: Colors.white)
                    ),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Text(
                'R\$129,90',
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style:TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 25
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}