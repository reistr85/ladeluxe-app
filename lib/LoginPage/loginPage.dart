import 'package:first_projet/homePage/homePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class loginPage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
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
          const SizedBox(
            height: 30,
          ),  
          const Text(
            'Faça o seu Login',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style:TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 25
            ),
          ),  
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Digite o seu e-mail e senha para ter \n acesso ao nosso  app.',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            // ignore: unnecessary_const
            style:const TextStyle(
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
              hintText: 'digite seu e-mail',
              prefixIcon: const Padding(
                padding: EdgeInsets.all(0.0),
                child: Icon(
                  Icons.email,
                  color: Colors.black54,
                )
              ),
            ),
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20,),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              hintText: 'digite sua senha',
              prefixIcon: const Padding(
                padding: EdgeInsets.all(0.0),
                child: Icon(
                  Icons.key,
                  color: Colors.black54,
                )
              ),
            ),
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20,),
          const Text(
            'esqueci minha senha',
            textAlign: TextAlign.right,
            overflow: TextOverflow.ellipsis,
            style:TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color.fromARGB(213, 49, 47, 47),
              fontStyle: FontStyle.italic
            ),
          ),
          const SizedBox(height: 15,),
          Container(
            child: TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: const BorderSide(color: Color.fromARGB(255, 119, 9, 42))
                  )
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                    padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(20)),
              ),
              child: const Text(
                "Login",
                style: TextStyle(
                height: 1.0,
                fontSize: 15,
                color: Color.fromARGB(255, 119, 9, 42),
                ),
              ),
              
              onPressed: () => {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => homePage()
                  )
                )
              },
            ),  
          ),
          const SizedBox(height: 15,),
          const Align(
            alignment: Alignment.center,
            child: Text.rich(
              TextSpan(
                text: 'Ainda não é cadastrado?', // default text style      
                children: <TextSpan>[
                  TextSpan(
                    text: ' Clique aqui',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 119, 9, 42),
                    )
                  ),
                ],
              ),
            )
          ),
          ],
        ),
      )
    );
  }
}