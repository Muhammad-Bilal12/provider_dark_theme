import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice_tut3/addtocart/provider/dark_mode.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeChanger = Provider.of<ThemeProvider>(context);
    return Drawer(
      child: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: Text('System Mode'),
            value: ThemeMode.system,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: Text('Light Mode'),
            value: ThemeMode.light,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: Text('Dark Mode'),
            value: ThemeMode.dark,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
          ),
        ],
      ),
    );
  }
}
