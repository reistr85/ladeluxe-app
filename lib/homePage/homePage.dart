import 'dart:ui';
import 'package:first_projet/homePage/homeModalAdd.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class homePage extends StatefulWidget{
  @override
  _homePageState createState() =>  _homePageState();
}

class _homePageState extends State<homePage> with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

 @override
 void dispose() {
   _tabController.dispose();
   super.dispose();
 }

  @override 
  Widget build(BuildContext context) => Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 20,),
            const Text(
              'Produtos',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style:TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 18
              ),
            ),
            SizedBox(height: 5,),
            Container(
              child: TabBar(
                controller: _tabController,
                labelColor: Color.fromARGB(255, 119, 9, 42),
                unselectedLabelColor: Colors.grey,
                indicatorColor: Color.fromARGB(255, 119, 9, 42),
                tabs: const [
                  Tab(text: 'Calcinhas'),
                  Tab(text: 'Biquines'),
                  Tab(text: 'Cuecas'),
                  Tab(text: 'Maiôs'),
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 580,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    child: ListView(
                      children: <Widget>[
                       ListTile(
                         title: Text('Calcinha 1', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 120,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                         onTap: () => showBarModalBottomSheet(context: context, builder: (context) => HomeModalAdd()),
                       ),
                       Divider(color: Colors.grey,),
                       ListTile(
                         title: Text('Calcinha 2', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 130,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                         onTap: () => showBarModalBottomSheet(context: context, builder: (context) => HomeModalAdd())
                       ),
                       Divider(color: Color.fromARGB(255, 66, 66, 66),),
                       ListTile(
                         title: Text('Calcinha 3', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 120,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                       ),
                       Divider(color: Colors.grey,),
                       ListTile(
                         title: Text('Calcinha 4', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 120,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                       ),
                       Divider(color: Colors.grey,),
                       ListTile(
                         title: Text('Calcinha 5', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 120,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                       ),
                       Divider(color: Colors.grey,),
                       ListTile(
                         title: Text('Calcinha 6', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 120,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                       ),
                       Divider(color: Colors.grey,),
                      ],
                    ),
                  ),
                  Container(
                    child: ListView(
                      children: <Widget>[
                       ListTile(
                         title: Text('Biquine 1', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 120,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                       ),
                       Divider(color: Colors.grey,),
                       ListTile(
                         title: Text('Biquine 2', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 130,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                       ),
                       Divider(color: Color.fromARGB(255, 66, 66, 66),),
                       ListTile(
                         title: Text('Biquine 3', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 120,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                       ),
                       Divider(color: Colors.grey,),
                       ListTile(
                         title: Text('Biquine 4', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 120,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                       ),
                       Divider(color: Colors.grey,),
                       ListTile(
                         title: Text('Biquine 5', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 120,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                       ),
                       Divider(color: Colors.grey,),
                       ListTile(
                         title: Text('Biquine 6', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 120,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                       ),
                       Divider(color: Colors.grey,),
                      ],
                    ),
                  ),
                  Container(
                    child: ListView(
                      children: <Widget>[
                       ListTile(
                         title: Text('Cueca 1', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 120,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                       ),
                       Divider(color: Colors.grey,),
                       ListTile(
                         title: Text('Cueca 2', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 130,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                       ),
                       Divider(color: Color.fromARGB(255, 66, 66, 66),),
                       ListTile(
                         title: Text('Cueca 3', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 120,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                       ),
                       Divider(color: Colors.grey,),
                       ListTile(
                         title: Text('Cueca 4', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 120,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                       ),
                       Divider(color: Colors.grey,),
                       ListTile(
                         title: Text('Cueca 5', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 120,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                       ),
                       Divider(color: Colors.grey,),
                       ListTile(
                         title: Text('Cueca 6', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 120,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                       ),
                       Divider(color: Colors.grey,),
                      ],
                    ),
                  ),
                  Container(
                    child: ListView(
                      children: <Widget>[
                       ListTile(
                         title: Text('Biquine 1', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 120,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                       ),
                       Divider(color: Colors.grey,),
                       ListTile(
                         title: Text('Biquine 2', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 130,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                       ),
                       Divider(color: Color.fromARGB(255, 66, 66, 66),),
                       ListTile(
                         title: Text('Biquine 3', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 120,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                       ),
                       Divider(color: Colors.grey,),
                       ListTile(
                         title: Text('Biquine 4', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 120,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                       ),
                       Divider(color: Colors.grey,),
                       ListTile(
                         title: Text('Biquine 5', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 120,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                       ),
                       Divider(color: Colors.grey,),
                       ListTile(
                         title: Text('Biquine 6', style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromARGB(255, 119, 9, 42), fontSize: 18),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 12.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text(
                                 'Lorem Ipsum is simply dummy text of \n the printing and typesetting industry',
                                 style: TextStyle(fontSize: 16),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 24),
                                 child: Text(
                                   'R\$ 120,00',
                                   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80), fontWeight: FontWeight.w800),
                                 ),
                               )
                             ],
                           ),
                         ),
                         trailing: Image.asset('assets/productsImages/image1.png'),
                         contentPadding: EdgeInsets.all(15),
                       ),
                       Divider(color: Colors.grey,),
                      ],
                    ),
                  ),
                ]
              ),
            )
          ],
        ),
      ),
  );
}