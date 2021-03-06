import 'package:flutter/material.dart';
import 'package:petsaojoao/models/back_reg_my_pet/picture_upload_firebase.dart';
import 'package:petsaojoao/components/register_tutor/alert_error.dart';

import 'package:petsaojoao/screens/dashboard/dashboard.dart';

import '../../components/register_tutor/alert_error.dart';
import '../../models/back_reg_my_pet/picture_upload_firebase.dart';
import '../dashboard/dashboard.dart';
import '../register_tutor/personal_info.dart';

class EndRegMyPet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent[200],
        body: ListView(
          children: <Widget>[
            Container(child: Image.asset('assets/background/top_paws.png')),
            SizedBox(
              height: 100,
            ),
            Center(
              child: Container(
                width: 350,
                child: Text(
                  'Finalizar Cadastro?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
            FlatButton(
              color: Colors.lightGreenAccent,
              textColor: Colors.black,
              disabledColor: Colors.green,
              disabledTextColor: Colors.grey,
              onPressed: () async {
//                String res = await FirebaseUpload().sendToServer();
                String res = 'complete';
                if (res == 'complete') {
                  AlertError(Icons.check_circle, "Pronto!",
                      "Suas imagens foram salvas em nosso sistema!");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Dashboard(),
                    ),
                  );
                } else {
                  AlertError(Icons.broken_image, "Erro",
                      "Um erro ocorreu, não pudemos salvar sus imagens");
                }
              },
              child: Container(
                width: 100,
                height: 50,
                alignment: Alignment.center,
                child: (Text('Enviar')),
              ),
            ),
            Container(child: Image.asset('assets/background/bottom_paws.png')),
          ],
        ),
      ),
    );
  }
}
