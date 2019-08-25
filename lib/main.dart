import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:startup_invest/FinishPage.dart';
import 'package:startup_invest/PhotoPage.dart';
import 'package:startup_invest/PreFinishPage.dart';
import 'package:startup_invest/TinderPage.dart';
import 'package:startup_invest/detailPage.dart';
import 'package:startup_invest/model/StartupProfile.dart';

class RouteGenerator {
    static Route<dynamic> generateRoute(RouteSettings settings) {
        // Getting arguments passed in while calling Navigator.pushNamed
        final args = settings.arguments;

        switch (settings.name) {
            case '/start':
                return MaterialPageRoute(builder: (_) => StartPage());
            case '/choice':
            // Validation of correct data type
                return MaterialPageRoute(builder: (_) => ChoicePage());
            case '/choiceIP':
                return MaterialPageRoute(builder: (_) => ChoiceIPPage());
            case '/confirmIP':
                return MaterialPageRoute(builder: (_) => ConfirmIPPage());
            case "/startupProfile":
                return MaterialPageRoute(builder: (_) => StartupProfilePage());
            case "/startupProfile1":
                return MaterialPageRoute(builder: (_) => StartupProfilePage1(profile: args,));
            case "/detail":
                return MaterialPageRoute(builder: (_) => DetailPage(profile: args,));
            case "/photo":
                return MaterialPageRoute(builder: (_) => PhotoPage(profile: args,));
            case "/prefinish":
                return MaterialPageRoute(builder: (_) => PreFinishPage(profile: args,));
            case "/finish":
                return MaterialPageRoute(builder: (_) => FinishPage());
                case "/main":
                return MaterialPageRoute(builder: (_) => MainPage());

            default:
        }
    }
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                primarySwatch: Colors.blue,
            ),
            home: StartPage(title: 'Flutter Demo Home Page'),
            initialRoute: "/start",
            onGenerateRoute: RouteGenerator.generateRoute,
        );
    }
}

class StartPage extends StatefulWidget {
    StartPage({Key key, this.title}) : super(key: key);

    final String title;

    @override
    _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                        Image(
                            image: AssetImage("images/jobs.png"),
                            height: 250,
                            width: 250,
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 25),
                            child: Text("Давай-ка зарегестрируемся",style: TextStyle(fontSize: 25),),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 200),
                            child: Align(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                        FlatButton(
                                            onPressed: () {
                                                Navigator.of(context).pushNamed("/choice");
                                            },
                                            child: Image(
                                                width: 80,
                                                height: 80,
                                                image: AssetImage("images/vk_logo.png"),
                                            ),
                                        ),
                                        FlatButton(
                                            onPressed: () {
                                                Navigator.of(context).pushNamed("/choice");
                                            },
                                            child: Image(
                                                width: 80,
                                                height: 80,
                                                image: AssetImage("images/esia_logo.png"),
                                            ),
                                        )
                                    ],
                                ),
                            ),
                        )
                    ],
                ),
            ),
        );
    }
}

class ChoicePage extends StatefulWidget {
    ChoicePage({Key key, this.title}) : super(key: key);

    final String title;

    @override
    _ChoicePageState createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
    int _counter = 0;

    void _incrementCounter() {
        setState(() {
            _counter++;
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
                            "Привет!",
                            style: TextStyle(fontSize: 25),
                        ),
                        Text(
                            "Кем ты хочешь быть?",
                            style: TextStyle(fontSize: 25),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 250),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                    ButtonTheme(
                                        minWidth: 165.0,
                                        height: 110.0,
                                        child: RaisedButton(
                                            onPressed: () {
                                                Navigator.of(context).pushNamed("/choiceIP");
                                            },
                                            child: Text(
                                                "Я ИП",
                                                style: TextStyle(fontSize: 25, color: Colors.white),
                                            ),
                                        ),
                                    ),
                                    ButtonTheme(
                                        minWidth: 165.0,
                                        height: 110.0,
                                        child: RaisedButton(
                                            onPressed: () {},
                                            child: Text("Я инвестор",
                                                style: TextStyle(fontSize: 25, color: Colors.white)),
                                        ),
                                    )
                                ],
                            ),
                        )
                    ],
                ),
            ),
        );
    }
}

class ChoiceIPPage extends StatefulWidget {
    ChoiceIPPage({Key key, this.title}) : super(key: key);

    final String title;

    @override
    _ChoiceIPPageState createState() => _ChoiceIPPageState();
}

class _ChoiceIPPageState extends State<ChoiceIPPage> {
    int _counter = 0;

    void _incrementCounter() {
        setState(() {
            _counter++;
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
                            "У тебя есть номер ИП?",
                            style: TextStyle(fontSize: 25),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 250),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                    ButtonTheme(
                                        minWidth: 165.0,
                                        height: 110.0,
                                        child: RaisedButton(
                                            onPressed: () {
                                                Navigator.of(context).pushNamed("/confirmIP");
                                            },
                                            child: Text(
                                                "Да",
                                                style: TextStyle(fontSize: 25, color: Colors.white),
                                            ),
                                        ),
                                    ),
                                    ButtonTheme(
                                        minWidth: 165.0,
                                        height: 110.0,
                                        child: RaisedButton(
                                            onPressed: () {},
                                            child: Text("Нет",
                                                style: TextStyle(fontSize: 25, color: Colors.white)),
                                        ),
                                    )
                                ],
                            ),
                        )
                    ],
                ),
            ),
        );
    }
}

class ConfirmIPPage extends StatefulWidget {
    ConfirmIPPage({Key key, this.title}) : super(key: key);

    final String title;

    @override
    _ConfirmIPPageState createState() => _ConfirmIPPageState();
}

class _ConfirmIPPageState extends State<ConfirmIPPage> {
    int _counter = 0;

    void _incrementCounter() {
        setState(() {
            _counter++;
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
                            "Введите данные для",
                            style: TextStyle(fontSize: 25),
                        ),
                        Text(
                            "подтверждения ИП",
                            style: TextStyle(fontSize: 25),
                        ),
                        Padding(
                            padding:
                            EdgeInsets.only(left: 25, right: 25, top: 80, bottom: 10),
                            child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'ФИО',
                                ),
                            ),
                        ),
                        Padding(
                            padding:
                            EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
                            child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Номер ИП',
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
                                        Navigator.of(context).pushNamed("/startupProfile");
                                    },
                                    child: Text("Далее",
                                        style: TextStyle(fontSize: 25, color: Colors.white)),
                                ),
                            ),
                        )
                    ],
                ),
            ),
        );
    }
}

class StartupProfilePage extends StatefulWidget {

    StartupProfilePage({Key key, this.title}) : super(key: key);

    final String title;

    @override
    _StartupProfilePageState createState() => _StartupProfilePageState();
}

class _StartupProfilePageState extends State<StartupProfilePage> {
    StartupProfile profile = StartupProfile();
    String categoryValue = null;
    String statusValue = null;
    var titleController = TextEditingController();
    var categories = ["Дизайн", "Электроника", "Мода"];
    var statuses = ["Идея",'Прототип','MVP','Готовый бизнес'];

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
                            "Заполним профиль",
                            style: TextStyle(fontSize: 25),
                        ),
                        Padding(
                            padding:
                            EdgeInsets.only(left: 25, right: 25, top: 80, bottom: 10),
                            child: TextField(
                                controller: titleController,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Название проекта',
                                ),
                            ),
                        ),
                        Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: 340.0,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey)),
                            child: DropdownButtonHideUnderline(
                                child: ButtonTheme(
                                    alignedDropdown: true,
                                    child: DropdownButton(
                                        value: categoryValue,
                                        hint: Text("Категория"),
                                        items: [
                                            DropdownMenuItem<String>(
                                                value: "1",
                                                child: Text(
                                                    "Дизайн",
                                                ),
                                            ),
                                            DropdownMenuItem<String>(
                                                value: "2",
                                                child: Text(
                                                    "Электроника",
                                                ),
                                            ),
                                            DropdownMenuItem<String>(
                                                value: "3",
                                                child: Text(
                                                    "Мода",
                                                ),
                                            ),
                                        ],
                                        onChanged: (value) {
                                            categoryValue = value;
                                            setState(() {});
                                        },
                                        //style: Theme.of(context).textTheme.title,
                                    ),
                                ),
                            ),
                        ),
                        Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: 340.0,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey)),
                            child: DropdownButtonHideUnderline(
                                child: ButtonTheme(
                                    alignedDropdown: true,
                                    child: DropdownButton(
                                        value: statusValue,
                                        hint: Text("Статус"),
                                        items: [
                                            DropdownMenuItem<String>(
                                                value: "1",
                                                child: Text(
                                                    "Идея",
                                                ),
                                            ),
                                            DropdownMenuItem<String>(
                                                value: "2",
                                                child: Text(
                                                    "Прототип",
                                                ),
                                            ),
                                            DropdownMenuItem<String>(
                                                value: "3",
                                                child: Text(
                                                    "MVP",
                                                ),
                                            ),
                                            DropdownMenuItem<String>(
                                                value: "4",
                                                child: Text(
                                                    "Готовый бизнесс",
                                                ),
                                            )
                                        ],
                                        onChanged: (value) {
                                            statusValue = value;
                                            setState(() {});
                                        },
                                        //style: Theme.of(context).textTheme.title,
                                    ),
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
                                        profile.title = titleController.text;
                                        profile.category = categories[int.parse(categoryValue)];
                                        profile.status = statuses[int.parse(statusValue)-1];

                                        Navigator.of(context).pushNamed("/startupProfile1", arguments: profile);
                                    },
                                    child: Text("Далее",
                                        style: TextStyle(fontSize: 25, color: Colors.white)),
                                ),
                            ),
                        )
                    ],
                ),
            ),
        );
    }
}

class StartupProfilePage1 extends StatefulWidget {
    StartupProfile profile;
    StartupProfilePage1({Key key, this.title, this.profile}) : super(key: key);

    final String title;

    @override
    _StartupProfilePage1State createState() => _StartupProfilePage1State();
}

class _StartupProfilePage1State extends State<StartupProfilePage1> {
    String dividentTimeValue = null;
    String soldIdeaValue = null;
    var moneyController = TextEditingController();
    var timeController = TextEditingController();
    var words = ["Да", "Нет"];

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
                            "Заполним профиль",
                            style: TextStyle(fontSize: 25),
                        ),
                        Padding(
                            padding:
                            EdgeInsets.only(left: 25, right: 25, top: 80, bottom: 10),
                            child: TextField(
                                controller: moneyController,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Какая сумма требуется?",
                                ),
                            ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 25, right: 25, bottom: 10),
                            child: TextField(
                                controller: timeController,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Сколько время нужно?",
                                ),
                            ),
                        ),
                        Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: 340.0,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey)),
                            child: DropdownButtonHideUnderline(
                                child: ButtonTheme(
                                    alignedDropdown: true,
                                    child: DropdownButton(
                                        value: dividentTimeValue,
                                        hint: Text("Через сколько проект окупится?"),
                                        items: [
                                            DropdownMenuItem<String>(
                                                value: "До полугода",
                                                child: Text(
                                                    "До полугода",
                                                ),
                                            ),
                                            DropdownMenuItem<String>(
                                                value: "До двух лет",
                                                child: Text(
                                                    "До двух лет",
                                                ),
                                            ),
                                            DropdownMenuItem<String>(
                                                value: "До 5 лет",
                                                child: Text(
                                                    "До 5 лет",
                                                ),
                                            ),
                                        ],
                                        onChanged: (value) {
                                            dividentTimeValue = value;
                                            setState(() {});
                                        },
                                        //style: Theme.of(context).textTheme.title,
                                    ),
                                ),
                            ),
                        ),
                        Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: 340.0,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey)),
                            child: DropdownButtonHideUnderline(
                                child: ButtonTheme(
                                    alignedDropdown: true,
                                    child: DropdownButton(
                                        value: soldIdeaValue,
                                        hint: Text("Ты готов продать идею?"),
                                        items: [
                                            DropdownMenuItem<String>(
                                                value: "1",
                                                child: Text(
                                                    "Да",
                                                ),
                                            ),
                                            DropdownMenuItem<String>(
                                                value: "2",
                                                child: Text(
                                                    "Нет",
                                                ),
                                            )
                                        ],
                                        onChanged: (value) {
                                            soldIdeaValue = value;
                                            setState(() {});
                                        },
                                        //style: Theme.of(context).textTheme.title,
                                    ),
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
                                        widget.profile.money = moneyController.text;
                                        widget.profile.time = timeController.text;
                                        widget.profile.devidentTime = dividentTimeValue;
                                        widget.profile.soldIdea = words[int.parse(soldIdeaValue)-1];

                                        Navigator.of(context).pushNamed("/detail", arguments: widget.profile);
                                    },
                                    child: Text("Далее",
                                        style: TextStyle(fontSize: 25, color: Colors.white)),
                                ),
                            ),
                        )
                    ],
                ),
            ),
        );
    }
}

/*class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}*/
