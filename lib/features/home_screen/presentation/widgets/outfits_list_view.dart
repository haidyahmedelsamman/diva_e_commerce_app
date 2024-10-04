import 'package:diva_e_commerce_app/features/home_screen/presentation/widgets/outfit_item.dart';
import 'package:flutter/material.dart';

class OutfitsListView extends StatelessWidget {
  const OutfitsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.65,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return OutfitItem(
            isFavorite: index == 0 ? true : false,
            itemIndex: index,
          );
        },
      ),
    );
  }
}
