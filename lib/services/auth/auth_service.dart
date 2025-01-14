import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService{


  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;


  Future<UserCredential> signUpWithEmailPassword(String email,password) async{
    try{
      // creating a user
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      // saving the user
      _firestore.collection("Users").doc(userCredential.user!.uid).set(
        {
          'uid': userCredential.user!.uid,
          'email':email,
        }
      );
      return userCredential;
    } on FirebaseAuthException catch(e){
      throw Exception(e.code);
    }
  }

  Future<void> signOut() async{
    return await _auth.signOut();
  }


  //sign in

  Future<UserCredential> signInWithEmailPassword(String email, password) async{
    try{
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email:email,
        password:password,
      );


      // saving the user
      _firestore.collection("Users").doc(userCredential.user!.uid).set(
          {
            'uid': userCredential.user!.uid,
            'email':email
          }
      );
      return userCredential;

    } on FirebaseAuthException catch(e){
      throw Exception(e.code);
    }
    }


  }

