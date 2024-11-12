import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:widgets_app/config/cards/cards_item.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});
  static const String name = 'cards_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Buttons Screen',
        ),
      ),
      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SafeArea(
      bottom: true,
      child: SingleChildScrollView(
        child: Column(
          children: [
            _CustomCardType1(colors: colors),
            ...cards.map(
              (card) => _CardType1(
                label: card['label'],
                elevation: card['elevation'],
              ),
            ),
            ...cards.map(
              (card) => _CardType2(
                label: card['label'],
                elevation: card['elevation'],
              ),
            ),
            ...cards.map(
              (card) => _CardType3(
                label: card['label'],
                elevation: card['elevation'],
              ),
            ),
            ...cards.map(
              (card) => _CardType4(
                label: card['label'],
                elevation: card['elevation'],
              ),
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}

class _CustomCardType1 extends StatelessWidget {
  const _CustomCardType1({
    required this.colors,
  });

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: colors.primary),
            title: const Text('Soy un titulo'),
            subtitle: const Text(
              'Adipisicing esse eiusmod commodo qui dolor veniam enim. In eiusmod labore voluptate officia aliqua qui officia voluptate aliquip fugiat eu. Culpa adipisicing eiusmod exercitation nostrud sint laboris dolor fugiat voluptate ea. ',
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Cancelar',
                    style: TextStyle(color: colors.primary),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'OK',
                    style: TextStyle(color: colors.primary),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType1({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.more_vert_outlined),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardType2 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType2({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(15),
          topRight: Radius.circular(10),
        ),
        side: BorderSide(
          color: colors.outline,
        ),
      ),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.more_vert_outlined),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardType3 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType3({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      elevation: elevation,
      color: colors.surfaceContainerHighest,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.more_vert_outlined),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('${label}Filled'),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardType4 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType4({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      color: colors.surfaceContainerHighest,
      child: Stack(
        children: [
          FadeIn(
            child: Image.network(
              'https://picsum.photos/id/${elevation.toInt()}/600/250',
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Icon(
                Icons.more_vert_outlined,
                color: colors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
