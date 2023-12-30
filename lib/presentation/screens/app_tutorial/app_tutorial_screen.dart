import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final slides = <SlideInfo>[
  SlideInfo(
    'Busca la comida',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget augue vitae augue tincidunt fermentum.',
    'assets/images/1.png',
  ),
  SlideInfo(
    'Entrega Rapida',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget augue vitae augue tincidunt fermentum.',
    'assets/images/2.png',
  ),
  SlideInfo(
    'Disfruta la comida',
    'LoremIpsun dolor sit amet, consectetur adipiscing elit. Donec eget augue vitae augue tincidunt fermentum.',
    'assets/images/3.png',
  ),

];



class SlideInfo {

  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);

}

class AppTutorialScreen extends StatelessWidget {

  static const name = 'tutorial_screen';


  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            physics: const BouncingScrollPhysics(),
            children: 
                slides.map(
                  (slideData) => _Slide(
                    title: slideData.title,
                    caption: slideData.caption,
                    imageUrl: slideData.imageUrl,
                  )
                ).toList()
              ,
            ),
          

          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              child: const Text('Skip'),
              onPressed: () => context.pop(),
            ),
          )

        ],
      ),
      );
  }
}



class _Slide extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({super.key, required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;


    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30) ,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(imageUrl),),
            const SizedBox(height: 20,),
            Text(title, style: titleStyle,),
            const SizedBox(height: 10,),
            Text(caption, style: captionStyle,),

          ],
        ),
      ),
      );
  }
}