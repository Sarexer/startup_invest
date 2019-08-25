
import 'package:flutter/material.dart';
import 'package:startup_invest/model/StartupProfile.dart';

class PreFinishPage extends StatefulWidget {
    StartupProfile profile;
    PreFinishPage({Key key, this.title, this.profile}) : super(key: key);


    final String title;

    @override
    _PreFinishPageState createState() => _PreFinishPageState(profile);
}

class _PreFinishPageState extends State<PreFinishPage> {
    StartupProfile profile;
    _PreFinishPageState(this.profile);


    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: ListView(
                padding: EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 12),
                children: <Widget>[
                    Card(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                                Image(
                                    image: AssetImage("images/image.jpg"),
                                ),
                                Divider(

                                ),
                                ListTile(
                                    leading: Icon(Icons.assignment),
                                    title: Text('${profile.title}'),
                                    subtitle: Text('${profile.description}'),
                                ),
                                ListTile(
                                    leading: Icon(Icons.attach_money),
                                    title: Text("Какая сумма потребуется?"),
                                    subtitle: Text("${profile.money}"),

                                ),
                                ListTile(
                                    leading: Icon(Icons.date_range),
                                    title: Text("Сколько времени нужно?"),
                                    subtitle: Text("${profile.time}"),

                                ),
                                Divider(),
                                ListTile(
                                    title: Text('Категория'),
                                ),
                                Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    width: 340.0,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(color: Colors.grey)
                                    ),
                                    child: DropdownButtonHideUnderline(
                                        child: ButtonTheme(
                                            alignedDropdown: true,
                                            child: DropdownButton(
                                                value: profile.category,
                                                onChanged: (String newValue) {
                                                    profile.category = newValue;
                                                    setState(() {

                                                    });
                                                },
                                                items: ['Дизайн', 'Электроника', 'Мода'].map((String value) {
                                                    return DropdownMenuItem(
                                                        value: value,
                                                        child: Text(value),
                                                    );
                                                }).toList(),
                                            ),
                                        ),
                                    ),
                                ),
                                Divider(),
                                ListTile(
                                    title: Text('Статус'),
                                ),
                                Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    width: 340.0,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(color: Colors.grey)
                                    ),
                                    child: DropdownButtonHideUnderline(
                                        child: ButtonTheme(
                                            alignedDropdown: true,
                                            child: DropdownButton(
                                                value: profile.status,
                                                onChanged: (String newValue) {
                                                    profile.status = newValue;
                                                    setState(() {

                                                    });

                                                },
                                                items: ['Идея', 'Прототип', 'MVP', "Готовый бизнес"].map((String value) {
                                                    return DropdownMenuItem(
                                                        value: value,
                                                        child: Text(value),
                                                    );
                                                }).toList(),
                                            ),
                                        ),
                                    ),
                                ),
                                Divider(),
                                ListTile(
                                    title: Text('Через сколько проект окупится?'),
                                ),
                                Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    width: 340.0,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(color: Colors.grey)
                                    ),
                                    child: DropdownButtonHideUnderline(
                                        child: ButtonTheme(
                                            alignedDropdown: true,
                                            child: DropdownButton(
                                                value: profile.devidentTime,
                                                onChanged: (String newValue) {
                                                    profile.devidentTime = newValue;
                                                    setState(() {

                                                    });

                                                },
                                                items: ['До полугода', 'До двух лет', 'До 5 лет'].map((String value) {
                                                    return DropdownMenuItem(
                                                        value: value,
                                                        child: Text(value),
                                                    );
                                                }).toList(),
                                            ),
                                        ),
                                    ),
                                ),
                                Divider(),
                                ListTile(
                                    title: Text('Ты готов продать идею?'),
                                ),
                                Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    width: 340.0,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(color: Colors.grey)
                                    ),
                                    child: DropdownButtonHideUnderline(
                                        child: ButtonTheme(
                                            alignedDropdown: true,
                                            child: DropdownButton(
                                                value: profile.soldIdea,
                                                onChanged: (String newValue) {
                                                    profile.soldIdea = newValue;
                                                    setState(() {

                                                    });

                                                },
                                                items: ['Да', 'Нет'].map((String value) {
                                                    return DropdownMenuItem(
                                                        value: value,
                                                        child: Text(value),
                                                    );
                                                }).toList(),
                                            ),
                                        ),
                                    ),
                                ),

                            ],
                        ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: ButtonTheme(
                            height: 50,
                            child: RaisedButton(
                                onPressed: () {
                                    Navigator.of(context).pushNamed("/main");
                                },
                                child: Text("Далее", style: TextStyle(
                                    fontSize: 25, color: Colors.white)),
                            ),
                        )
                        ,
                    )


                ],
            ),
        );
    }
}
