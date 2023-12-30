import 'package:flutter/material.dart';


class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  int navDrawerIndex = 1;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });
      },
      children: [
        NavigationDrawerDestination(icon: const Icon(Icons.abc_sharp), label: const Text('Menu 1')),
        NavigationDrawerDestination(icon: const Icon(Icons.access_time_filled_outlined), label: const Text('Menu 2')),
      ],
      );
  }
}