import 'package:flutter/material.dart';

class MenuDestination {
  const MenuDestination(this.label, this.icon, this.selectedIcon);

  final String label;
  final Widget icon;
  final Widget selectedIcon;
}

const List<MenuDestination> destinationsClassic = <MenuDestination>[
  MenuDestination(
    'Get endpoint',
    Icon(Icons.arrow_right),
    Icon(Icons.arrow_right),
  ),
  MenuDestination(
    'Get current account',
    Icon(Icons.arrow_right),
    Icon(Icons.arrow_right),
  ),
  MenuDestination(
    'Get accounts',
    Icon(Icons.arrow_right),
    Icon(Icons.arrow_right),
  ),
  MenuDestination(
    'Get services from keychain',
    Icon(Icons.arrow_right),
    Icon(Icons.arrow_right),
  ),
  MenuDestination(
    'Keychain derive keypair',
    Icon(Icons.arrow_right),
    Icon(Icons.arrow_right),
  ),
  MenuDestination(
    'Keychain derive address',
    Icon(Icons.arrow_right),
    Icon(Icons.arrow_right),
  ),
];

const List<MenuDestination> destinationsSub = <MenuDestination>[
  MenuDestination(
    'Account Sub',
    Icon(Icons.arrow_right),
    Icon(Icons.arrow_right),
  ),
  MenuDestination(
    'Current account Sub',
    Icon(Icons.arrow_right),
    Icon(Icons.arrow_right),
  ),
];

const List<MenuDestination> destinationsWithConfirmation = <MenuDestination>[
  MenuDestination(
    'Send transaction',
    Icon(Icons.arrow_right),
    Icon(Icons.arrow_right),
  ),
  MenuDestination(
    'Sign transactions',
    Icon(Icons.arrow_right),
    Icon(Icons.arrow_right),
  ),
  MenuDestination(
    'Add service',
    Icon(Icons.arrow_right),
    Icon(Icons.arrow_right),
  ),
];

class NavigationDrawerSection extends StatefulWidget {
  const NavigationDrawerSection({
    super.key,
    required this.onDestinationSelected,
  });
  final Function(int) onDestinationSelected;

  @override
  State<NavigationDrawerSection> createState() =>
      _NavigationDrawerSectionState();
}

class _NavigationDrawerSectionState extends State<NavigationDrawerSection> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      onDestinationSelected: (selectedIndex) {
        setState(() {
          navDrawerIndex = selectedIndex;
        });

        widget.onDestinationSelected(selectedIndex);
      },
      selectedIndex: navDrawerIndex,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(28, 16, 16, 10),
          child: Text(
            'Get informations',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        ...destinationsClassic.map((destination) {
          return NavigationDrawerDestination(
            label: Text(destination.label),
            icon: destination.icon,
            selectedIcon: destination.selectedIcon,
          );
        }),
        const Divider(indent: 28, endIndent: 28),
        Padding(
          padding: const EdgeInsets.fromLTRB(28, 16, 16, 10),
          child: Text(
            'Subscription',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        ...destinationsSub.map((destination) {
          return NavigationDrawerDestination(
            label: Text(destination.label),
            icon: destination.icon,
            selectedIcon: destination.selectedIcon,
          );
        }),
        const Divider(indent: 28, endIndent: 28),
        Padding(
          padding: const EdgeInsets.fromLTRB(28, 16, 16, 10),
          child: Text(
            'With confirmation',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        ...destinationsWithConfirmation.map((destination) {
          return NavigationDrawerDestination(
            label: Text(destination.label),
            icon: destination.icon,
            selectedIcon: destination.selectedIcon,
          );
        }),
      ],
    );
  }
}
