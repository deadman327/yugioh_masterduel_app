import 'package:flutter/material.dart';
import 'package:yugioh_masterduel_app/models/models.dart';
import 'package:yugioh_masterduel_app/screens/content.dart';
import '../theme/app_theme.dart';

class TipsScreenScreen extends StatefulWidget {
  //ruta estaica
  static String routerName = 'tips';

  const TipsScreenScreen({Key? key}) : super(key: key);

  @override
  State<TipsScreenScreen> createState() => _TipsScreenScreenState();
}

class _TipsScreenScreenState extends State<TipsScreenScreen> {
  List<ExpansionItem> itemsTips = Content.tipsContent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        title: const Text('Tips'),
      ),
      body: ListView(
        children: [
          ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                itemsTips[index].isExpanded = !itemsTips[index].isExpanded;
              });
            },
            children: itemsTips.map((ExpansionItem item) {
              return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        item.header,
                        style: const TextStyle(
                          fontSize: 30,
                          color: AppTheme.primary,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    );
                  },
                  isExpanded: item.isExpanded,
                  body: Padding(
                    padding:
                        const EdgeInsets.only(bottom: 20, left: 30, right: 30),
                    child: Column(
                      children: [
                        Text(
                          item.content,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        FadeInImage(
                            placeholder:
                                const AssetImage('assets/drawer_banner.jpg'),
                            image: NetworkImage('${item.image}'))
                      ],
                    ),
                  ));
            }).toList(),
          )
        ],
      ),
    );
  }
}
