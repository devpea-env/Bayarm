import 'package:bayarm/models/product_model.dart';
import 'package:bayarm/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class Transaction {
  final ProductModel product;
  final UserModel user;
  final String montant;
  final Timestamp date;
  final String nom;

  Transaction(
      {required this.product,
      required this.user,
      required this.montant,
      required this.date,
      required this.nom});
}

