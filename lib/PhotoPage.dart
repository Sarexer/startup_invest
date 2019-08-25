
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:startup_invest/model/StartupProfile.dart';
import 'package:image_picker/image_picker.dart';

class PhotoPage extends StatefulWidget {
    StartupProfile profile;
    PhotoPage({Key key, this.title, this.profile}) : super(key: key);


    final String title;

    @override
    _PhotoPageState createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {

    File _image = File("");
    String assetKrest = "images/krest.png";



    Future getImage() async {
        var image = await ImagePicker.pickImage(source: ImageSource.gallery);
        assetKrest = "";
        setState(() {
            _image = image;
        });
    }
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(bottom: 24),
                            child: Image(
                                image: AssetImage("images/jobs.png"),
                                height: 80,
                                width: 80,
                            ),
                        ),
                        Text(
                            "Добавим фото твоего продукта",
                            style: TextStyle(fontSize: 25),
                        ),
                        Stack(
                            children: <Widget>[
                                Container(
                                    margin: EdgeInsets.only(bottom: 10,top: 140),
                                    width: 100.0,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(color: Colors.blue),
                                        color: Colors.transparent
                                    ),
                                    child:                         Padding(
                                        padding: EdgeInsets.only(),
                                        child: FlatButton(
                                            onPressed: getImage,
                                            child: Stack(
                                                children: <Widget>[
                                                    Image(
                                                        height: 80,
                                                        width: 80,
                                                        image: FileImage(_image),
                                                    ),
                                                    Image(
                                                        width: 80,
                                                        height: 80,
                                                        image: AssetImage(assetKrest),
                                                    )
                                                ],
                                            ),
                                        ),
                                    ),
                                )
                            ],
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 150),
                            child: ButtonTheme(
                                minWidth: 150,
                                height: 50,
                                child: RaisedButton(
                                    onPressed: (){
                                        Navigator.of(context).pushNamed("/prefinish", arguments: widget.profile);
                                    },
                                    child: Text("Далее", style: TextStyle(
                                        fontSize: 25, color: Colors.white)),
                                ),
                            )
                            ,
                        )
                    ],
                ),
            ),
        );
    }
}
