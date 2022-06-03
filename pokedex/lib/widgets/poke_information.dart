import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constant.dart';
import 'package:pokedex/constants/ui_helper.dart';
import 'package:pokedex/model/pokemon_model.dart';

class PokeInf extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeInf({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.w)),
          color: Colors.white),
      child: Padding(
        padding: UIHelper.getDefaultPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildInforRow('Name', pokemon.name),
            _buildInforRow('Height', pokemon.height),
            _buildInforRow('Weight', pokemon.weight),
            _buildInforRow('Spawn Time', pokemon.spawnTime),
            _buildInforRow('Weakness', pokemon.weaknesses),
            _buildInforRow('Pre Evolution', pokemon.prevEvolution),
            _buildInforRow('New Evolution', pokemon.nextEvolution),








          ],
        ),
      ),
    );
  }

  _buildInforRow(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,style: Constants.getPokeInfLabelText(),),
        if(value is List && value.isEmpty) 
        Text(value.join(","),style: Constants.getPokeInfTextStyle,)
        else if(value == null)
        Text('Not Available',style: Constants.getPokeInfTextStyle,)
        else Text(value.toString(),style: Constants.getPokeInfTextStyle,)
        
         ],


    );
  }
}
