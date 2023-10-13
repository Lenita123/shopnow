import 'package:flutter/material.dart';
import 'package:project/api.dart';
import 'package:project/list.dart';
import 'package:project/shoplist.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2>createState()=> _HomePageState();
}

class  _HomePageState extends State<HomePage2> {

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
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 136, 129, 129),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black
                  )
                ]
              ),
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
                image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcIeIGS_qexOBcAXpQwo4kk_iLuo6mL31RpA&usqp=CAU'),
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
              height: 200,
              color: const Color.fromARGB(255, 218, 206, 206),
              child: GridView.builder(itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              childAspectRatio: 6,
              mainAxisExtent: 130,
              crossAxisSpacing: 3,
              mainAxisSpacing: 4),
              itemBuilder:(BuildContext context,int index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=> Eachitems(),));
                  },
                  child: Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(fit: BoxFit.fill,
            image: NetworkImage(items[index]),
            )
                    ),
                    child: Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: Text('Food Detals',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                );
              } ,
              ),
            ),
            ),
            Padding(padding: EdgeInsets.only(top: 20,left: 20,right: 20),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcIeIGS_qexOBcAXpQwo4kk_iLuo6mL31RpA&usqp=CAU'),
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

