import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  bool wantsBreakFast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  Transportation selectedTransportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles Adicionales'),
          value: isDeveloper,
          onChanged: (value) {
            setState(() {
              isDeveloper = !isDeveloper;
            });
          },
        ),
        ExpansionTile(
          title: const Text('Vehículo de Transport'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('By Plane'),
              subtitle: const Text('Viajar por Avion'),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) => {
                setState(() {
                  selectedTransportation = Transportation.plane;
                })
              },
            ),
            RadioListTile(
              title: const Text('By Submarine'),
              subtitle: const Text('Viajar por Submarine'),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) => {
                setState(() {
                  selectedTransportation = Transportation.submarine;
                })
              },
            ),
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Viajar por Carro'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => {
                setState(() {
                  selectedTransportation = Transportation.car;
                })
              },
            ),
            RadioListTile(
              title: const Text('By Boat'),
              subtitle: const Text('Viajar por Bote'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => {
                setState(() {
                  selectedTransportation = Transportation.boat;
                })
              },
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('Wants Break Fast?'),
          subtitle: const Text('Quieres Desayuno?'),
          value: wantsBreakFast,
          onChanged: (value) {
            setState(() {
              wantsBreakFast = !wantsBreakFast;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('Wants Lunch?'),
          subtitle: const Text('Quieres Almuerzo?'),
          value: wantsLunch,
          onChanged: (value) {
            setState(() {
              wantsLunch = !wantsLunch;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('Wants Dinner?'),
          subtitle: const Text('Quieres Cena?'),
          value: wantsDinner,
          onChanged: (value) {
            setState(() {
              wantsDinner = !wantsDinner;
            });
          },
        )
      ],
    );
  }
}
