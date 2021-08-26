import 'package:flutter/material.dart';
import 'package:telegramui/app.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:telegramui/call.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
    final _notifier = ValueNotifier<ThemeModel>(ThemeModel(ThemeMode.light));
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeModel>(
      valueListenable: _notifier,
      builder: (_, model, __) {
        final mode = model.mode;
        return MaterialApp(
          theme: ThemeData.light(), // Provide light theme.
          darkTheme: ThemeData.dark(), // Provide dark theme.
          themeMode: mode, // Decides which theme to show.
          home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("TELEGRAM"),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                hoverColor: Colors.black,
                onPressed: () {
                  showSearch(
                    context: context,
                  );
                })
          ],
          backgroundColor: Color.fromRGBO(0, 136, 204, 100),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  // color: Color.fromRGBO(0, 136, 204, 100),
                ),
                accountName: Text("Abdullah halari"),
                accountEmail: Text("+92 304 2869599"),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://avatars.githubusercontent.com/u/56643834?v=4")),
                onDetailsPressed: () {},
                otherAccountsPictures: <Widget>[
                  // CircleAvatar(
                  //   child: Icon(Icons.wb_sunny),
                  //   backgroundColor: Color.fromRGBO(0, 136, 204, 100),
                  // ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                primary: Colors.blue, // background
  ),
              onPressed: () => _notifier.value = ThemeModel(mode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light),
            
              child:Icon(Icons.wb_sunny,color: Colors.white,) ,

                  ),
                ],
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => App()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.group),
                    title: Text("New Group"),
                  )),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Contacts"),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Call()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.call),
                    title: Text("Call"),
                  )),
              ListTile(
                  leading: Icon(Icons.people), title: Text("People Nearby")),
              ListTile(
                  leading: Icon(Icons.message), title: Text("Saved Messages")),
              ListTile(leading: Icon(Icons.settings), title: Text("Settings")),
              Divider(
                height: 40,
                thickness: 2.0,
              ),
              ListTile(
                  leading: Icon(Icons.insert_invitation_rounded),
                  title: Text("Invite")),
              ListTile(
                  leading: Icon(Icons.featured_play_list),
                  title: Text("Telegram Features")),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue[700],
          hoverColor: Colors.black,
          child: Icon(Icons.create, color: Colors.white),
          onPressed: () {},
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            chat("Abullah", "dsjhdkshdkshkdhkshjkdhjk", "5", "4:45 PM"),
            Divider(
              height: 5,
            ),
            chat("Abullah", "dsjhdkshdkshkdhkshjkdhjk", "4", "4:45 PM"),
            Divider(
              height: 5,
            ),
            chat("Abullah", "dsjhdkshdkshkdhkshjkdhjk", "87", "4:45 PM"),
            Divider(
              height: 5,
            ),
            chat("Abullah", "dsjhdkshdkshkdhkshjkdhjk", "2", "4:45 PM"),
            Divider(
              height: 5,
            ),
            chat("Abullah", "dsjhdkshdkshkdhkshjkdhjk", "41", "4:45 PM"),
            Divider(
              height: 5,
            ),
            chat("Abullah", "dsjhdkshdkshkdhkshjkdhjk", "55", "4:45 PM"),
            Divider(
              height: 5,
            ),
            chat("Abullah", "dsjhdkshdkshkdhkshjkdhjk", "102", "4:45 PM"),
            Divider(
              height: 5,
            ),
            chat("Abullah", "dsjhdkshdkshkdhkshjkdhjk", "10", "4:45 PM"),
            Divider(
              height: 5,
            ),
            chat("Abullah", "dsjhdkshdkshkdhkshjkdhjk", "6", "4:45 PM"),
            Divider(
              height: 5,
            ),
            chat("Abullah", "dsjhdkshdkshkdhkshjkdhjk", "7", "4:45 PM"),
            Divider(
              height: 5,
            ),
            chat("Abullah", "dsjhdkshdkshkdhkshjkdhjk", "8", "4:45 PM"),
            Divider(
              height: 5,
            ),
            chat("Abullah", "dsjhdkshdkshkdhkshjkdhjk", "20", "4:45 PM"),
            Divider(
              height: 5,
            ),
            chat("Abullah", "dsjhdkshdkshkdhkshjkdhjk", "1", "4:45 PM"),
            Divider(
              height: 5,
            ),
            chat("Abullah", "dsjhdkshdkshkdhkshjkdhjk", "3", "4:45 PM"),
            Divider(
              height: 5,
            ),
            chat("Abullah", "dsjhdkshdkshkdhkshjkdhjk", "7", "4:45 PM")
          ],
          
        )
        
        )
        )

        );
      },
    );
  }
}

Widget chat(name, text, no, time) {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: Colors.black,
      backgroundImage:
          NetworkImage("https://avatars.githubusercontent.com/u/56643834?v=4"),
      radius: 20,
    ),
    title: Text(name),
    subtitle: Text(text),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(time),
        CircleAvatar(
          backgroundColor: Colors.grey[400],
          radius: 15,
          child: Text(no),
          foregroundColor: Colors.white,
        ),
      ],
    ),
  );
}
class ThemeModel with ChangeNotifier {
  final ThemeMode _mode;
  ThemeMode get mode => _mode;

  ThemeModel(this._mode);
}
