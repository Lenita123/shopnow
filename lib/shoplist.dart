
import 'package:flutter/material.dart';
import 'package:project/list.dart';


import 'package:project/shop.dart';



class Eachitems extends StatefulWidget {
  const Eachitems({super.key});

  @override
  State<Eachitems>createState()=> _EachitemState();
}

class  _EachitemState extends State<Eachitems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 192, 62, 22),
        title: const Text('Electronics',
        style: TextStyle(
          color: Colors.white
        ),),
        centerTitle: true,
      ),
      body: SafeArea(child: SingleChildScrollView(
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
                  Icon(Icons.arrow_drop_up),
                  Text('Sort'),
                  Spacer(),
                  Icon(Icons.filter),
                  Text('Filter',
                  ),
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage('https://img1.wsimg.com/isteam/ip/119e2d1b-0ed9-4a03-a51a-334684501753/news12_5.jpg/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=h:1000,cg:true'),
                fit: BoxFit.fill),
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20)
              ),
            ),),
            Padding(padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
            child: Container(
              height: 200,
              color: const Color.fromARGB(255, 218, 206, 206),
              child: GridView.builder(itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              childAspectRatio: 6,
              mainAxisExtent: 100,
              crossAxisSpacing: 3,
              mainAxisSpacing: 4),
              itemBuilder:(BuildContext context,int index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=> Shop(),));
                  },
                  child: Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(fit: BoxFit.fill,
            image: NetworkImage(item[index]),
            )
                    ),
                    child: Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: Text('Electronics',
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
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage('https://img1.wsimg.com/isteam/ip/119e2d1b-0ed9-4a03-a51a-334684501753/news12_5.jpg/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=h:1000,cg:true'),
                fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(0)
              ),
            ),
            ),
          ],
        ),
      )
      ),
      );
  }
}