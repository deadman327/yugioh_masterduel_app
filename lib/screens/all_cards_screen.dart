import 'package:provider/provider.dart';
import 'package:yugioh_masterduel_app/models/models.dart';
import 'package:yugioh_masterduel_app/screens/screens.dart';
import 'package:yugioh_masterduel_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../providers/provider_carts.dart';
import '../widgets/custom_card_type_3.dart';

class ListViewBuilderScreen extends StatefulWidget {
  //ruta estaica
  static String routerName = 'all_cards';

  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      // print(' ${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent} ');
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        // add5();
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    add10();

    isLoading = false;
    setState(() {});

    if (scrollController.position.pixels + 100 <=
        scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(scrollController.position.pixels + 120,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  void add10() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((e) => lastId + e));
    setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    add10();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final allCartsProvider = Provider.of<AllCartsProvider>(context);
    //final List<Datum> carts_yugi;
    final List<Datum> carts_yugi;
    carts_yugi = allCartsProvider.allCartsList;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        title: const Text('Cartas'),
      ),
      body: Stack(
        children: [
          Container(
            child: RefreshIndicator(
              color: AppTheme.primary,
              onRefresh: onRefresh,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                controller: scrollController,
                itemCount: carts_yugi.length,
                itemBuilder: (BuildContext context, int index) {
                  // Construimos el OBJETO de las cartas
                  final carts_info = carts_yugi[index];

                  return CustomCardType3(
                    name: ' ${carts_info.name}',
                    type: ' ${carts_info.type}',
                    level: 'Effect ${carts_info.desc}',
                    imageUrl: carts_info.cardImages[0].imageMonsterEffect,
                    info: allCartsProvider.allCartsList,
                  );
                },
              ),
            ),
          ),
          if (isLoading)
            Positioned(
                bottom: 40,
                left: size.width * 0.5 - 30,
                child: const _LoadingIcon())
        ],
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9), shape: BoxShape.circle),
        child: const CircularProgressIndicator(color: AppTheme.primary));
  }
}
