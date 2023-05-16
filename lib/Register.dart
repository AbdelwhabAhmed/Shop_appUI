import 'package:flutter/material.dart';
import 'package:shop_app/HomeScreen.dart';

class Register extends StatelessWidget {
  const Register({ Key? key }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
   final url2Image='https://image.dhgate.com/0x0p/f2/albu/g6/M01/C8/95/rBVaSFso9w2AEB2ZAAMSal3Bv_E354.jpg';
    var FirsNamelController= TextEditingController();
    var SecondNameController=TextEditingController();
    var Password2controller=TextEditingController();
    var email2Controller=TextEditingController();
    
     
    return Scaffold(
     
      body: Stack(
         children: [
                Container(
        
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage( 
                       url2Image
                      ),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
                    )
                  ),
                ),
              
           Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           
            SizedBox(
            height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[600]!.withOpacity(.5),
                  borderRadius: BorderRadius.circular(16)
                ) ,
                child: TextFormField(
                  controller: FirsNamelController,
                  onChanged: (value){
                   print(value);
                 },
                  onFieldSubmitted: (value){
                       print(value);
                  },
                   decoration: InputDecoration(
                    labelText:'First Name',
                    border: InputBorder.none,
                     
                      
                    )
                   ),
              ),
            ),
           SizedBox(
            height: 10,
           ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[600]!.withOpacity(.5),
                  borderRadius: BorderRadius.circular(16)
                ) ,
                child: TextFormField(
                 controller: SecondNameController,
                  onChanged: (value){
                 print(value);
                  },
                  onFieldSubmitted: (value){
                       print(value);
                  },
                   decoration: InputDecoration(
                    
                    labelText:'Second Name',
                    border: InputBorder.none,
                    )
                   ),
              ),
            ),
           SizedBox(
            
            height: 10,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[600]!.withOpacity(.5),
                  borderRadius: BorderRadius.circular(16)
                ) ,
                child: TextFormField(
                 
                  controller: email2Controller,
                 onChanged: (value){
                   print(value);
                 },
                  onFieldSubmitted: (value){
                       print(value);

                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border:InputBorder.none,
                    prefixIcon: Icon(
                      Icons.email
                    )
                  

                  ),
                ),
              ),
            ),
            SizedBox(
            height: 10.0,
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
                 controller: Password2controller,
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
                  'Sign in',
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
            
          ],
        )
         ]
      ),
    );
  }
}