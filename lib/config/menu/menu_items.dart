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
];
