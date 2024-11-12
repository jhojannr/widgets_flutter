import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Botones',
    subTitle: 'Multiples Botones de Material Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Tarjetas',
    subTitle: 'Contenedor Estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItems(
    title: 'Progress Indicators',
    subTitle: 'Generales y Controlados',
    link: '/progress_indicators',
    icon: Icons.refresh_rounded,
  ),
  MenuItems(
    title: 'Snackbar',
    subTitle: 'Indicadores en Pantalla',
    link: '/snackbar',
    icon: Icons.perm_device_info,
  ),
  MenuItems(
    title: 'Animated Container',
    subTitle: 'Stateful widget Animado',
    link: '/animated',
    icon: Icons.check_box_outline_blank_outlined,
  ),
  MenuItems(
    title: 'UI Controls',
    subTitle: 'UI Controls Widgets ',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),
  MenuItems(
    title: 'Introducción a la Aplicación',
    subTitle: 'Pequeño tutorial de la aplicación',
    link: '/tutorial',
    icon: Icons.accessible_rounded,
  ),
  MenuItems(
    title: 'Infinite Scroll',
    subTitle: 'Pequeño tutorial de Infinite Scroll',
    link: '/infinite',
    icon: Icons.list_alt,
  ),
  MenuItems(
    title: 'Counter App',
    subTitle: 'Aplicación de Contador',
    link: '/counter',
    icon: Icons.add,
  ),
  MenuItems(
    title: 'Theme Changer',
    subTitle: 'Theme Changer',
    link: '/theme',
    icon: Icons.theater_comedy,
  ),
  MenuItems(
    title: 'Alerts',
    subTitle: 'Alerts Screen',
    link: '/alerts',
    icon: Icons.info,
  ),
];
