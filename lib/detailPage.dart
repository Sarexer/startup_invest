
import 'package:flutter/material.dart';
import 'package:startup_invest/model/StartupProfile.dart';

class DetailPage extends StatefulWidget {
    StartupProfile profile;
  DetailPage({Key key, this.title, this.profile}) : super(key: key);


  final String title;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var detailController = TextEditingController();

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
                    Padding(
                        padding: EdgeInsets.only(
                            left: 25, right: 25, top: 16, bottom: 10),
                        child: TextField(
                            controller: detailController,
                            minLines: 15,
                            maxLines: 15,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintMaxLines: 2,
                                hintText: "Подробнее опиши свой проект (идея, этапы, работы, команда)"
                            ),
                        ),
                    ),

                    Padding(
                        padding: EdgeInsets.only(top: 150),
                        child: ButtonTheme(
                            minWidth: 150,
                            height: 50,
                            child: RaisedButton(
                                onPressed: () {
                                    widget.profile.description = detailController.text;
                                    Navigator.of(context).pushNamed("/photo", arguments: widget.profile);
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
