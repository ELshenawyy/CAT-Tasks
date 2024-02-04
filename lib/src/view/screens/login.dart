import 'package:api_bloc_clean/src/bloc/repo/repos_api.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _key = GlobalKey<FormState>();
  TextEditingController code = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child:Column(
            children: [
              const  SizedBox(height: 50),
              Image.asset("assets/images/elw.png",width: 250,height: 250),


              _buildForme()
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildForme(){
     return Form(
       key: _key,
         child:Column(
       children: [
          TextFormField(
            textAlign: TextAlign.center,
            decoration:const InputDecoration(
              labelText: "Code",
              hintText:"Code" ,
              hintStyle: TextStyle(
                color: Colors.black,
              ),
            ),
            controller:code ,
            keyboardType: TextInputType.number,
          ),
          const  SizedBox(height: 50),
         TextFormField(
           textAlign: TextAlign.center,
           obscureText: true,
           obscuringCharacter: "#",
           decoration:const InputDecoration(
             labelText: "Password",
             hintText:"Password" ,
             hintStyle: TextStyle(
               color: Colors.black,
             ),
           ),
           controller:password ,
           keyboardType: TextInputType.number,
         ),

         const SizedBox(
           height: 30,
         ),
         _buttonLogin(
             (){},
         ),

         const Text(''),
       ],
     ));
  }


  Widget _buttonLogin(VoidCallback action){
     return MaterialButton(
         color: Colors.lightBlue[800],
         shape: OutlineInputBorder(
           borderRadius: BorderRadius.circular(20),
           borderSide: const BorderSide(width: 0.1,color: Colors.blue,),
           gapPadding: 2,
         ),
         padding: const  EdgeInsets.symmetric(horizontal: 100,vertical: 15),
         child: const  Text(
             "Login",
             textAlign: TextAlign.center,
             style:TextStyle(
                fontSize: 22,
               fontWeight: FontWeight.bold,
               color: Colors.white,
             )),
         onPressed: action,

         );
  }

}
