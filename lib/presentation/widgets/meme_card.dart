import 'package:flutter/material.dart';
import 'package:meme_app/domain/entities/memes.dart';

const memeImageKey = Key('meme-image');

const memeNameKey = Key('meme-name');

class MemeCard extends StatelessWidget {
  const MemeCard({
    super.key,
    required this.meme,
  });

  final Memes meme;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          meme.url,
          key: memeImageKey,
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            meme.name,
            key: memeNameKey,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
