// To parse required this JSON data, do
//
//     final allCartsResponse = allCartsResponseFromMap(jsonString);

import 'dart:convert';

class AllCartsResponse {
  AllCartsResponse({
    required this.data,
  });

  List<Datum> data;

  factory AllCartsResponse.fromJson(String str) =>
      AllCartsResponse.fromMap(json.decode(str));

  factory AllCartsResponse.fromMap(Map<String, dynamic> json) =>
      AllCartsResponse(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
      );
}

class Datum {
  Datum({
    required this.id,
    required this.name,
    required this.type,
    required this.desc,
    this.race,
    this.archetype,
    //required this.cardSets,
    required this.cardImages,
    //required this.cardPrices,
    this.atk,
    this.def,
    this.level,
    this.attribute,
    //required this.banlistInfo,
    this.scale,
    this.linkval,
    //required this.linkmarkers,
  });

  int id;
  String name;
  String type;
  String desc;
  String? race;
  String? archetype;
  //List<CardSet> cardSets;
  List<CardImage> cardImages;
  //List<CardPrice> cardPrices;
  int? atk;
  int? def;
  int? level;
  String? attribute;
  //BanlistInfo banlistInfo;
  int? scale;
  int? linkval;
  //List<Linkmarker> linkmarkers;

  factory Datum.fromJson(String str) => Datum.fromMap(json.decode(str));

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        desc: json["desc"],
        race: json["race"],
        archetype: json["archetype"],
        // cardSets: json["card_sets"] == null ? null : List<CardSet>.from(json["card_sets"].map((x) => CardSet.fromMap(x))),
        cardImages: List<CardImage>.from(
            json["card_images"].map((x) => CardImage.fromMap(x))),
        //cardPrices: List<CardPrice>.from(json["card_prices"].map((x) => CardPrice.fromMap(x))),
        atk: json["atk"],
        def: json["def"],
        level: json["level"],
        attribute: json["attribute"],
        //banlistInfo: json["banlist_info"] == null ? null : BanlistInfo.fromMap(json["banlist_info"]),
        scale: json["scale"],
        linkval: json["linkval"],
        //linkmarkers: json["linkmarkers"] == null ? null : List<Linkmarker>.from(json["linkmarkers"].map((x) => linkmarkerValues.map[x])),
      );
}

class CardImage {
  CardImage({
    required this.did,
    required this.imageUrl,
    required this.imageUrlSmall,
  });

  int did;
  String imageUrl;
  String imageUrlSmall;

  get imageMonsterEffect {
    if (this.did != null)
      return 'https://storage.googleapis.com/ygoprodeck.com/pics/${this.did}.jpg';
    //       return 'https://storage.googleapis.com/ygoprodeck.com/pics/${this.did}.jpg';

    return 'https://i.stack.imgur.com/GNhxO.png';
  }

  factory CardImage.fromJson(String str) => CardImage.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CardImage.fromMap(Map<String, dynamic> json) => CardImage(
        did: json["id"],
        imageUrl: json["image_url"],
        imageUrlSmall: json["image_url_small"],
      );

  Map<String, dynamic> toMap() => {
        "id": did,
        "image_url": imageUrl,
        "image_url_small": imageUrlSmall,
      };
}
