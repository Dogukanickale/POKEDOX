import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constant.dart';
import 'package:pokedex/constants/ui_helper.dart';
import 'package:pokedex/model/pokemon_model.dart';

class PokeType extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeType({Key? key,required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: UIHelper.getDefaultPadding(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(pokemon.name ?? "",style: Constants.getPokemonNameTextStyle(),),
              Text('#${pokemon.num}',style: Constants.getPokemonNameTextStyle(),),
            ],


          ),
          SizedBox(height: 0.02.sh),
          Chip(label: Text(pokemon.type?.join(' , ') ?? '',style: Constants.getTypeChipTextStyle(),))

        ],
      ),
    );
  }
}
