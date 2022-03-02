import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {


  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {


 var tfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            Padding(
              padding: EdgeInsets.only(left: 50,right: 50,bottom: 20),
              child: TextField(
                controller: tfController,
                obscureText: true,
                maxLength: 5,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,

                decoration: const InputDecoration(
                hintText: "Yazınız",
                  labelText: "Ha buraya yaz",
                  filled: true,
                  fillColor: Colors.yellow,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),

              ),
            ),

          ElevatedButton(onPressed: ()
              {
                print('Butona basıldı. ${tfController.text}');
                }, child: Text("ElevatedButton", style: TextStyle(
            color: Colors.orange,
          ),),
          style: ElevatedButton.styleFrom(
            primary: Colors.teal,
            shadowColor: Colors.black,
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Colors.pinkAccent),
            ),
          ),
          ),

            TextButton(onPressed: ()
            {
              print('Butona basıldı.');
            }, child: Text("TextButton", style: TextStyle(
              color: Colors.white,
            ),),
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightGreen,
                shadowColor: Colors.black,
                elevation: 8,

              ),
            ),

            Text("Durum: "),
          ],
        ),
      ),

    );
  }
}
