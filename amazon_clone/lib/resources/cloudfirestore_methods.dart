import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CloudFireDatabase{
  CloudFireDatabase({required name,required address});
  String? name;
  String? address;

  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  // CreateMap createMap = CreateMap(Name:name,Address:address);
  // Map map = createMap.getVal();

  addNameAddressToDatabase(){
      firebaseFirestore.collection("user").doc(firebaseAuth.currentUser?.uid).set({"Name":name,"Address":address});
  }

}