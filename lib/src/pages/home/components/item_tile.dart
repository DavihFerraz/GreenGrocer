import 'package:flutter/material.dart';
import 'package:green_grocer/src/models/item_model.dart';
import 'package:green_grocer/src/pages/auth/config/custom_colors.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({
    super.key,
    required this.item,
  });
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shadowColor: Colors.grey.shade300,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          30,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Imagem
            Expanded(
              child: Image.asset(item.imageUrl),
            ),

            //Nome
            Text(
              item.itemName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            //Preco - Unidade
            Row(
              children: [
                Text(
                  item.price.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: CustomColors.customSwatchColor,
                  ),
                ),
                Text(
                  '/${item.unit}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade500,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
