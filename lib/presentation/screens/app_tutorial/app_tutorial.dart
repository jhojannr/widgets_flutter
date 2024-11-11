import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
    'Busca la comida',
    'Voluptate reprehenderit cupidatat irure consectetur. Eu officia mollit cupidatat eu sint proident excepteur non consectetur ullamco. Id ex veniam est eiusmod commodo et ex commodo fugiat. Aliquip dolor ut Lorem ut commodo aliquip.',
    'assets/images/1.png',
  ),
  SlideInfo(
    'Entrega Rápida',
    'Est sunt magna qui occaecat culpa anim velit eu consequat. Sunt cillum sint mollit eiusmod labore excepteur nostrud. Ut ut non dolore ex eiusmod excepteur proident culpa sit anim laboris labore veniam incididunt. Culpa fugiat elit sit eu aliqua est quis nostrud sit ullamco laborum. Voluptate in eu adipisicing tempor aliquip nisi consequat adipisicing irure magna. Qui ea consectetur ad nostrud culpa dolore reprehenderit sint tempor enim sit consectetur. Magna ex duis adipisicing voluptate veniam magna et est incididunt labore cupidatat aliquip commodo.',
    'assets/images/2.png',
  ),
  SlideInfo(
    'Disfruta la comida',
    'Magna consectetur laboris et deserunt nulla enim sunt. Lorem ipsum quis elit sit aliqua aliqua. Dolor proident consequat consequat ut minim Lorem duis ipsum sint. Est ipsum voluptate incididunt proident commodo qui amet.',
    'assets/images/3.png',
  ),
];

class AppTutorialScreen extends StatefulWidget {
  static const name = 'app_tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  late final pageViewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();
    pageViewController.addListener(
      () {
        final page = pageViewController.page ?? 0;
        if (!endReached && page >= (slides.length - 1.5)) {
          setState(() {
            endReached = true;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            children: slides
                .map(
                  (slideData) => _Slide(
                    title: slideData.title,
                    caption: slideData.caption,
                    imageUrl: slideData.imageUrl,
                  ),
                )
                .toList(),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Salir'),
            ),
          ),
          endReached
              ? Positioned(
                  bottom: 30,
                  right: 30,
                  child: FadeInRight(
                    from: 15,
                    delay: const Duration(seconds: 1),
                    child: FilledButton(
                      onPressed: () {},
                      child: const Text('Comenzar'),
                    ),
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(
              imageUrl,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: titleStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            caption,
            style: captionStyle,
          )
        ],
      ),
    );
  }
}
