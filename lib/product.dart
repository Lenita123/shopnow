import 'package:flutter/material.dart';
import 'package:project/shoplist.dart';


class ProductItem extends StatelessWidget {
  final productName;
  final price;
  final image;

  const  ProductItem({
    super.key,
    required this.productName,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: InkWell(
        onTap: () {},
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(style: BorderStyle.none),
          ),
          child: Center(
            child: Column(
              children: [
                InkWell(
  onTap: () {
    Navigator.push(context,MaterialPageRoute(builder:(context)=>Eachitems()));// Replace 'fourth' with the actual route name
  },
  child: SizedBox(
    height: 100,
    child: Image.network(image),
  ),
),

                // InkWell(
                //    onTap: (){
                //     Navigator.pushNamed(context,fourth);
                //    },
                //    child: SizedBox(
                //     height: 100,
                //      child:  Image.network(pImage),
                //    ),
                //     // SizedBox(
                //     //   height: 100,
                //     //     child:  Image.network(pImage),
                //     // ),
                  
                // ),
                Text(
                  productName,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w800),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'RS - $price',
                        style: const TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      ),
                      // Text(
                      //   'Size - $pSize',
                      //   style: const TextStyle(
                      //       color: Colors.black,
                      //       fontSize: 12,
                      //       fontStyle: FontStyle.italic,
                      //       fontWeight: FontWeight.normal),
                      // ),
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}