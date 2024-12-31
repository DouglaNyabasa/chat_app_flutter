// class AuthService{
//
//
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//
//   //sign in
//
//   Future<UserCredential> signInWithEmailPassword(String email, password) async{
//     try{
//       UserCredintail userCredintail = await _auth.signInWithEmailAndPassword(
//         email:email,
//         password:password,
//       );
//       return userCredintail;
//
//     } on FirebaseAuthException catch(e){
//       throw Exception(e.code);
//     }
//     }
//
//
//   }
//
// }