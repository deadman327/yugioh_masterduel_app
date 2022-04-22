import 'package:flutter/material.dart';
import 'package:yugioh_masterduel_app/models/models.dart';
import 'package:yugioh_masterduel_app/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  static String routerName = 'details';
  String? name;
  // name
  // imagen
  // desc
  // type

  DetailsScreen({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Cambiar luego por una instancia de movie
    //final Datum carts_yugi = ModalRoute.of(context)!.settings.arguments
    //    as Datum; // Detalles para efectos

    // print(carts_yugi.name);

    return Scaffold(
        body: CustomScrollView(
      slivers: [
        _CustomAppBar(/*carts_yugi*/),
        SliverList(
            delegate: SliverChildListDelegate([
          _PosterAndTitle(/*carts_yugi*/),
          _Overview(/*carts_yugi*/),
          _Overview(/*carts*/),
          _Overview(/*carts*/),
          //CastingCards()
        ])),
      ],
    ));
  }
}

class _CustomAppBar extends StatelessWidget {
  //final Datum cart;

  //const _CustomAppBar(this.cart);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      // Retirar el 200 para que se vea bien
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(bottom: 10),
          color: Colors.black12,
          child: Text(
            'nombre de la carta',
            style: TextStyle(fontSize: 16),
          ),
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/deck.gif'),
          image: NetworkImage('https://i.imgur.com/FJeVogg.png'),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  //final Datum cart;

  // const _PosterAndTitle(this.cart);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: FadeInImage(
            placeholder: AssetImage('assets/no-image.png'),
            image: NetworkImage('https://i.imgur.com/FJeVogg.png'),
            height: 50,
          ),
        ),
        SizedBox(width: 20),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: size.width - 190),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nombre de la carta',
                  style: Theme.of(context).textTheme.headline5,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2),
              Text('Typo de carta',
                  style: Theme.of(context).textTheme.subtitle1,
                  overflow: TextOverflow.ellipsis),
              Row(
                children: [
                  Icon(
                    Icons.start_outlined,
                    size: 15,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'movie.voteAverage',
                    style: Theme.of(context).textTheme.caption,
                  )
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}

class _Overview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        'Laborum incididunt enim incididunt duis est anim anim cillum minim sunt cupidatat incididunt nostrud. Culpa qui magna exercitation occaecat dolor laborum consectetur',
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
