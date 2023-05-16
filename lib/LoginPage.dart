import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/HomeScreen.dart';
import 'package:shop_app/Register.dart';

class LoginDesign extends StatelessWidget {
  const LoginDesign({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final urlImage="https://image.dhgate.com/0x0p/f2/albu/g6/M01/C8/95/rBVaSFso9w2AEB2ZAAMSal3Bv_E354.jpg";
    var Passwordcontroller;
    var emailController;
    return Scaffold(

      body:Stack(
             children: [
                Container(
        
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage( 
                       urlImage
                      ),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
                    )
                  ),
                )
                ,
                Column(
            mainAxisAlignment: MainAxisAlignment.center,      
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           
            SizedBox(
            height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[600]!.withOpacity(.5),
                  borderRadius: BorderRadius.circular(16)
                ) ,
                child: TextFormField(
                 
                 controller: emailController,
                 onChanged: (value){
                   print(value);
                 },
                  onFieldSubmitted: (value){
                       print(value);

                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.email
                    )
                  

                  ),
                ),
              ),
            ),
            SizedBox(
            height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[600]!.withOpacity(.5),
                  borderRadius: BorderRadius.circular(16)
                ) ,
                child: TextFormField(
                 
                 cursorColor: Colors.black,
                 controller: Passwordcontroller,
                 onChanged: (value){
                   print(value);
                 },
                  onFieldSubmitted: (value){
                       print(value);

                  },
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.lock
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye
                    )
                  

                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,),
          Column(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children:[
           TextButton(
                    onPressed: (){
                    }, 
                    child: 
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                      'Forget Password?',
                      style: TextStyle(color: Colors.white),
                      ),
                    )
                    ),]),
            SizedBox( 
            height: 10,
            ),
             Padding(
               padding: const EdgeInsets.all(50.0),
               child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.black,
                ),
                width: double.infinity,
                
                 child: MaterialButton(
                  height: 30,
                  onPressed:(){
                 
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                        HomeScreen(),));
                 },
                 child: Text(
                  'Login',
                  style: TextStyle(
                   color: Colors.white,
                    fontSize: 30,
                  ),
                 ),
                 
                 
                 ),
               ),
             ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account? ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                      ),
                  ),
                  TextButton(
                    onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>
                        Register(),
                        ),
                        );

                    }, 
                    child: 
                    Text(
                    'Register now',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                      ,color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
       
                


             ],


      )
    );
  }
}