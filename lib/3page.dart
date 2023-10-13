import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/api.dart';

import 'package:project/product.dart';
import 'package:project/productRes.dart';
import 'package:project/shoplist.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home>createState()=> _HomeState();
}

class  _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    ApiClass.instance.getProducts();
    
    return Scaffold(
    
      body: SafeArea(
        child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromARGB(66, 97, 93, 93),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(153, 180, 176, 176)
                  ) 
           ] ),
           child: const Row(
                children: [
                  Icon(Icons.location_on),
                  Text('Palarivattom, Kochi'),
                  Spacer(),
                  Icon(Icons.search),
                  Text('Choose city or area',
                  style: TextStyle(
                    decoration: TextDecoration.underline
                  ),),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage('https://img.freepik.com/premium-photo/futuristic-gadgets-showcase-lineup-sleek-modern-technological-devices_977107-682.jpg'),
                fit: BoxFit.fill),
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20)
              ),
            ),),
            const Padding(padding: EdgeInsets.only(top: 20,left: 20,right: 20),
            child: Row(
              children: [
                Text('OFFERS FOR TOU',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                Spacer(),
                Text('View All (72)',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
                )
              ],
            ),
            ),
            Padding(padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
            child: Container(
              height: 300,
             
              color: Color.fromARGB(255, 130, 126, 192),

              child: ValueListenableBuilder(
                valueListenable: ApiClass.instance.productNotifier,
                builder: (context, List<ProductResponse> newProduct, _){
                 return GridView.builder(
  itemCount: newProduct.length,
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2),
     itemBuilder: (context, index) {
      final product = ApiClass.instance.productNotifier.value[index];
      return GestureDetector(
        child: Container(
          
      
          child: Column(
            children: [
              
              Image.network(product.image.toString(),
              height: 150,
              width: 150,
              fit: BoxFit.fill,),
              Text(product.price.toString()),
              Text(product.productName.toString())
            ],
          ),
        ),
        onTap: () {
          Navigator.push(context, 
          MaterialPageRoute(builder: (context)=>Eachitems()));
        },
      );
  
},);

                }

              ),
            ),
            ),
            Padding(padding: EdgeInsets.only(top: 20,left: 20,right: 20),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage('https://img.freepik.com/premium-photo/futuristic-gadgets-showcase-lineup-sleek-modern-technological-devices_977107-682.jpg'),
                fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(0)
              ),
            ),),
            const Padding(padding: EdgeInsets.only(top: 20),
            child: Text('LETS HOOK YOUR UP WITH GOOD OFFERS',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),
            ),

          ],
        ),
      )
      )
      );
  }
  
}

