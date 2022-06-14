import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class signPage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/backgroundPage.png"),
        //     fit: BoxFit.cover
        //   )
        // ),
        padding: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 600,
              height: 200,
              child: Image.asset("assets/img1.png", width: 400, height: 400,),
            ),
          SizedBox(
            height: 30,
          ),  
          Text(
            'Cadastre-se',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style:TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 25
            ),
          ),  
          SizedBox(
            height: 10,
          ),
          Text(
            'Digite os seus dados para se \n cadastrar em nosso app',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style:TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Color.fromARGB(213, 49, 47, 47),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hoverColor: Colors.black45,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              hintText: 'digite seu nome',
              prefixIcon: const Padding(
                padding: EdgeInsets.all(0.0),
                child: Icon(
                  Icons.person,
                  color: Colors.black54,
                )
              ),
            ),
          ),  
          SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hoverColor: Colors.black45,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              hintText: 'digite seu e-mail',
              prefixIcon: const Padding(
                padding: EdgeInsets.all(0.0),
                child: Icon(
                  Icons.email,
                  color: Colors.black54,
                )
              ),
            ),
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10,),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              hintText: 'digite sua senha',
              prefixIcon: Padding(
                padding: EdgeInsets.all(0.0),
                child: Icon(
                  Icons.key,
                  color: Colors.black54,
                )
              ),
            ),
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20,),
          SizedBox(height: 15,),
          Container(
            child: TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Color.fromARGB(255, 119, 9, 42))
                  )
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
              ),
              child: const Text(
                "Cadastrar",
                style: TextStyle(
                height: 1.0,
                fontSize: 15,
                color: Color.fromARGB(255, 119, 9, 42),
                ),
              ),
              onPressed: () => {print("login")},
            ),  
          ),
          const SizedBox(height: 15,),
          Container(
            child: const Align(
              alignment: Alignment.center,
              child: Text.rich(
                TextSpan(
                  text: 'Já é cadastrado?', // default text style      
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Faça o Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 119, 9, 42),
                      )),
                  ],
                ),
              )
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ],
        ),
      )
    );
  }
}