import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  final List<String> setting = [
    'Airplane mode',
    'WLAN',
    'Mobile Data',
    'Bluetooth'
  ];
  List<bool> settingValues = [
    false,
    false,
    false,
    false
  ];
  void onSwitch1Changed(bool value) {
    setState(() {
      this.settingValues[0] = value;
    });
    print(settingValues);
  }

  void onSwitch2Changed(bool value) {
    setState(() {
      this.settingValues[1] = value;
    });
    print(settingValues);
  }

  void onSwitch3Changed(bool value) {
    setState(() {
      this.settingValues[2] = value;
    });
    print(settingValues);
  }

  void onSwitch4Changed(bool value) {
    setState(() {
      this.settingValues[3] = value;
    });
    print(settingValues);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Demo Switch'),
        ),
        body: Container(
            padding: EdgeInsets.all(10.0),
            child: ListView(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SwitchListTile(
                      value: this.settingValues[0],
                      onChanged: (bool value) {
                        onSwitch1Changed(value);
                      },
                      title: Text(this.setting[0]),
                      secondary: Icon(Icons.airplanemode_active),
                    ),
                    Divider(),
                    SwitchListTile(
                      value: this.settingValues[1],
                      onChanged: (bool value) {
                        onSwitch1Changed(value);
                      },
                      title: Text(this.setting[1]),
                      secondary: Icon(Icons.wifi),
                    ),
                    Divider(),
                    SwitchListTile(
                      value: this.settingValues[2],
                      onChanged: (bool value) {
                        onSwitch1Changed(value);
                      },
                      title: Text(this.setting[2]),
                      secondary: Icon(Icons.data_usage),
                    ),
                    Divider(),
                    SwitchListTile(
                      value: this.settingValues[3],
                      onChanged: (bool value) {
                        onSwitch1Changed(value);
                      },
                      title: Text(this.setting[3]),
                      secondary: Icon(Icons.bluetooth),
                    ),
                  ],
                ),
              ],
            )));
  }
}
