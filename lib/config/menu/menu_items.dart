

import 'package:flutter/material.dart'; //show IconData;

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon, 
  });

}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Riverpod Counter',
    subTitle: 'Pantalla para probar Riverpod',
    link: '/riverpod-counter',
    icon: Icons.add
    ),
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined
    ),
  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card
    ),
  MenuItem(
    title: 'Progress Indicators',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded
    ),
  MenuItem(
    title: 'Snackbars y dialogs',
    subTitle: 'Indicadores en pantallas',
    link: '/snackbars',
    icon: Icons.info_outline
    ),
  MenuItem(
    title: 'Animated Container',
    subTitle: 'Stateful widget animado',
    link: '/animated',
    icon: Icons.check_box_outlined
    ),
  MenuItem(
    title: 'UI Controls + Tiles',
    subTitle: 'Una serie de controles de Flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined
    ),
  MenuItem(
    title: 'Introduccion a la Aplicacion',
    subTitle: 'Pequeña introduccion a la aplicacion',
    link: '/tutorial',
    icon: Icons.accessibility_new_rounded
    ),
  MenuItem(
    title: 'Infinite Scroll y Pull',
    subTitle: 'Vistas infinitas y pull to refresh',
    link: '/infinite',
    icon: Icons.list_alt_rounded
    ),
  MenuItem(
    title: 'Cambiar tema',
    subTitle: 'Cambiar tema de la aplicacion',
    link: '/theme-changer',
    icon: Icons.color_lens_outlined
    ),
];