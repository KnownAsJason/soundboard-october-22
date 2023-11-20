import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var images = [
      Ink.image(
        width: 256,
        height: 256,
        image: NetworkImage(
            'https://cdn.pixabay.com/photo/2016/04/07/22/09/note-1314941_1280.png'),
        child: InkWell(
          onTap: () async {
            print(
                'https://cdn.pixabay.com/photo/2016/04/07/22/09/note-1314941_1280.png');
            
            final player = AudioPlayer(); // Create a player
            final duration = await player.setUrl(// Load a URL
            
                'https://pub-7de58e77bbdc477680e9cd9b28c977e3.r2.dev/Rick%20Roll%20Sound%20Effect.mp3'); // Schemes: (https: | file: | asset: )
             await player.setSpeed(.5); 
            player.play();
                 
          },
        ),
      ),
      Ink.image(
        width: 256,
        height: 256,
        image: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJBP5pyU3cNmd1LYQOz87cH03fPTSzZM0J4A&usqp=CAU'),
        child: InkWell(
          onTap: () async {
            print('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJBP5pyU3cNmd1LYQOz87cH03fPTSzZM0J4A&usqp=CAU');
            final player = AudioPlayer(); // Create a player
            final duration = await player.setUrl(// Load a URL
                'https://pub-7de58e77bbdc477680e9cd9b28c977e3.r2.dev/Rick%20Roll%20Sound%20Effect.mp3'); // Schemes: (https: | file: | asset: )
             await player.setSpeed(.5); 
            player.play();
           
          },
        ),
      ),
      Ink.image(
        width: 256,
        height: 256,
        image: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjjv-dVvwKy0q7tjhNH2oIcDIiTk-a3jSGOQ&usqp=CAU'),
        child: InkWell(
          onTap: () async {
            print(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjjv-dVvwKy0q7tjhNH2oIcDIiTk-a3jSGOQ&usqp=CAU');
                final player = AudioPlayer(); // Create a player
            final duration = await player.setUrl(// Load a URL
                'https://pub-7de58e77bbdc477680e9cd9b28c977e3.r2.dev/Rick%20Roll%20Sound%20Effect.mp3'); // Schemes: (https: | file: | asset: )
             await player.setSpeed(.5); 
             player.play();
          },
        ),
      ),
      Ink.image(
        width: 256,
        height: 256,
        image: NetworkImage(
            'https://iolani-school-campus-store.myshopify.com/cdn/shop/products/decal-is09-shield-cut-letter_370x.png?v=1601070689'),
        child: InkWell(
          onTap: () async {
            print(
                'https://iolani-school-campus-store.myshopify.com/cdn/shop/products/decal-is09-shield-cut-letter_370x.png?v=1601070689');
         final player = AudioPlayer(); // Create a player
            final duration = await player.setUrl(// Load a URL
                'https://pub-7de58e77bbdc477680e9cd9b28c977e3.r2.dev/Rick%20Roll%20Sound%20Effect.mp3'); // Schemes: (https: | file: | asset: )
             await player.setSpeed(.5); 
             player.play();
            },
        ),
      ),
      Ink.image(
        width: 256,
        height: 256,
        image: NetworkImage(
            'data:image/jpeg;base64,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'),
        child: InkWell(
          onTap: () async {
            print('a');
            final player = AudioPlayer(); // Create a player
            final duration = await player.setUrl(// Load a URL
                'https://pub-7de58e77bbdc477680e9cd9b28c977e3.r2.dev/Rick%20Roll%20Sound%20Effect.mp3'); // Schemes: (https: | file: | asset: )
             await player.setSpeed(.5); 
             player.play();
          },
        ),
      ),
      Ink.image(
        width: 256,
        height: 256,
        image: NetworkImage(
            'https://cdn.vox-cdn.com/thumbor/86FEQAUdOgw6aSPhEeKdxblchcM=/225x0:1575x900/1400x1050/filters:focal(225x0:1575x900):format(jpeg)/cdn.vox-cdn.com/uploads/chorus_image/image/46040686/button.0.0.jpg'),
        child: InkWell(
          onTap: () async {
            print('b');
            final player = AudioPlayer(); // Create a player
            final duration = await player.setUrl(// Load a URL
                'https://pub-7de58e77bbdc477680e9cd9b28c977e3.r2.dev/Rick%20Roll%20Sound%20Effect.mp3'); // Schemes: (https: | file: | asset: )
            await player.setSpeed(.5); 
             player.play();
          },
        ),
      ),
    ];

    return GridView.count(
      crossAxisCount: 3,
      children: images,
    );
  }
}
