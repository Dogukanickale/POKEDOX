import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/constants/ui_helper.dart';
import 'package:pokedex/model/pokemon_model.dart';

class PokeImg extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeImg({Key? key ,required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokeballImage = 'images/pokeball.png';
    return Stack(
      children: [Align(
        alignment: Alignment.bottomRight,
        child: Image.asset(pokeballImage,width: UIHelper.calculatePokeImgSize(),
        height: UIHelper.calculatePokeImgSize(),),
      ),
      
      
       Align(
         alignment: Alignment.bottomRight,
         child: Hero(
           tag: pokemon.id!,
           child: CachedNetworkImage(imageUrl: pokemon.img ?? '',
           errorWidget: (context,url,error) => Icon(Icons.abc),
           width:UIHelper.calculatePokeImgSize(),
               height: UIHelper.calculatePokeImgSize(),
               fit: BoxFit.fitHeight,
               placeholder: (context,url) => const CircularProgressIndicator(
                 color: Colors.red,
               )
           
           
           ),
         ),
       )],
    );
  }
}
