import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class MainPage extends StatefulWidget {
    MainPage({Key key, this.title}) : super(key: key);

    final String title;

    @override
    _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
    int _selectedIndex = 0;
    static const TextStyle optionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    List<Widget> _widgetOptions = <Widget>[
        TinderWidget(),
        ChatWidget(),
    ];

    void _onItemTapped(int index) {
        setState(() {
            _selectedIndex = index;
        });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: _widgetOptions.elementAt(_selectedIndex),
            ),
            bottomNavigationBar: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                        icon: Icon(Icons.favorite),
                        title: Text('Проекты'),
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.chat_bubble),
                        title: Text('Чат'),
                    )
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.amber[800],
                onTap: _onItemTapped,
            )

            // This trailing comma makes auto-formatting nicer for build methods.
        );
    }
}

class TinderWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        CardController controller;

        return new Center(
            child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: Stack(
                    children: <Widget>[
                        Center(
                            child: Text("Пока что нет проектов"),
                        ),
                        TinderSwapCard(
                            orientation: AmassOrientation.BOTTOM,
                            totalNum: 5,
                            stackNum: 3,
                            swipeEdge: 4.0,
                            maxWidth: 300,
                            maxHeight: 700,
                            minWidth: 250,
                            minHeight: 300,
                            cardBuilder: (context, index) => Card(
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
                                            title: Text('Название'),
                                        ),
                                        ListTile(
                                            leading: Icon(Icons.attach_money),
                                            title: Text("Какая сумма потребуется?"),
                                            subtitle: Text("2000000 рублей"),

                                        ),
                                        ListTile(
                                            leading: Icon(Icons.date_range),
                                            title: Text("Сколько времени нужно?"),
                                            subtitle: Text("1 месяц"),

                                        )

                                    ],
                                )
                                ),
                            cardController: controller = CardController(),
                            swipeUpdateCallback:
                                (DragUpdateDetails details, Alignment align) {
                                /// Get swiping card's alignment
                                if (align.x < 0) {
                                    //Card is LEFT swiping
                                } else if (align.x > 0) {
                                    //Card is RIGHT swiping
                                }
                            },
                            swipeCompleteCallback:
                                (CardSwipeOrientation orientation, int index) {
                                print(index);
                            })
                    ],
                )
            ));
    }
}

class ChatWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Center(
            child: Text("Здесь должен был быть чат", style: TextStyle(fontSize: 25),),
        );
    }
}
