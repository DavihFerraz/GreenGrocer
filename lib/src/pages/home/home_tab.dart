import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:green_grocer/src/config/app_data.dart' as app_data;
import 'package:green_grocer/src/pages/auth/config/custom_colors.dart';
import 'package:green_grocer/src/pages/home/components/category_tile.dart';
import 'package:green_grocer/src/pages/home/components/item_tile.dart';

// ignore: must_be_immutable
class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  String selectedCategory = 'Frutas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text.rich(
          TextSpan(
            style: const TextStyle(fontSize: 30),
            children: [
              TextSpan(
                text: 'Green',
                style: TextStyle(color: CustomColors.customSwatchColor),
              ),
              TextSpan(
                text: 'grocer',
                style: TextStyle(color: CustomColors.customConstrastColor),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 17, right: 15),
            child: GestureDetector(
              onTap: () {},
              child: Badge(
                badgeStyle: BadgeStyle(
                  badgeColor: CustomColors.customConstrastColor,
                ),
                badgeContent: const Text(
                  '0',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                child: Icon(
                  Icons.shopping_cart,
                  color: CustomColors.customSwatchColor,
                ),
              ),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          //Campo de pesquisa
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                isDense: true,
                hintText: 'Pesquise aqui...',
                hintStyle: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 15,
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  size: 21,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
              ),
            ),
          ),
          //Categorias
          Container(
            padding: const EdgeInsets.only(
              left: 25,
            ),
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return CategoryTile(
                  onPressed: () {
                    setState(() {
                      selectedCategory = app_data.categorias[index];
                    });
                  },
                  category: app_data.categorias[index],
                  isSelected: app_data.categorias[index] == selectedCategory,
                );
              },
              separatorBuilder: (_, index) => const SizedBox(
                width: 10,
              ),
              itemCount: app_data.categorias.length,
            ),
          ),
          //Gridbæ
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.fromLTRB(
                16,
                0,
                16,
                16,
              ),
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 9 / 11.5,
              ),
              itemCount: app_data.items.length,
              itemBuilder: (_, index) {
                return ItemTile(
                  item: app_data.items[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
