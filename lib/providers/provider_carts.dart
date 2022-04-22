import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yugioh_masterduel_app/models/models.dart';

import 'package:http/http.dart' as http;

class AllCartsProvider extends ChangeNotifier {
  String _baseUrl =
      'db.ygoprodeck.com'; // Dominio principal, no es necesario colocar el https

  // List<Datum> monsterCartsDisplay = [];
  List<Datum> allCartsList = [];

  AllCartsProvider() {
    //print('Provider inicializado');
    getAllCartas();
  }

  getAllCartas() async {
    var url = Uri.https(_baseUrl, 'api/v7/cardinfo.php');
    final response = await http.get(url);
    final allCarts = AllCartsResponse.fromJson(response.body);
    allCartsList = allCarts.data;

    notifyListeners();
  }
}
