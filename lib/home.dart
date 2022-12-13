import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';

/// Hello world !
void main() => runApp(home());

/// The main widget.
class home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _homeState();
}

/// The main widget state.
class _homeState extends State<home> {
  /// Whether dark mode is enabled.
  bool isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Day / night switcher example',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: const Color(0xFF253341)),
        scaffoldBackgroundColor: const Color(0xFF15202B),
      ),
      themeMode: isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(title: Text('gece gunduz modu')),
        body: SizedBox.expand(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2),
                child: Padding(
                  padding: const EdgeInsets.only(left: 370.0),
                  child: DayNightSwitcherIcon(
                    isDarkModeEnabled: isDarkModeEnabled,
                    onStateChanged: onStateChanged,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Called when the state (day / night) has changed.
  void onStateChanged(bool isDarkModeEnabled) {
    setState(() {
      this.isDarkModeEnabled = isDarkModeEnabled;
    });
  }
}
