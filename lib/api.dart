import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:project/loginres.dart';
import 'package:project/productRes.dart';
import 'package:project/regires.dart';
import 'package:project/url.dart';


class ApiClass {
ValueNotifier<List<ProductResponse>> productNotifier = ValueNotifier([]);
ApiClass._internal();
static ApiClass instance = ApiClass();
factory() {
return instance;
}

final dio = Dio();
final url = URL();

ApiClass() {
dio.options = BaseOptions(
baseUrl: url.baseUrl,
responseType: ResponseType.json,
);
}

Future<RegisterResponse?> registerUserApi(FormData formData) async {
try {
final result = await dio.post(url.registerEndpoint, data: formData);
return RegisterResponse.fromJson(jsonDecode(result.data));
} on DioException catch (e) {
print(e);
} catch (e) {
print(e);
}
}

Future<LoginResponse?> loginUserApi(FormData formData) async {
try {
final result = await dio.post(url.loginEndpoint, data: formData);
return LoginResponse.fromJson(jsonDecode(result.data));
} on DioException catch (e) {
print(e);
} catch (e) {
print(e);
}
}
// Future<ProductResponse?> productApi(FormData formData) async {
// try {
// final result = await dio.post(url.productEndpoint, data: formData);
// return ProductResponse.fromJson(jsonDecode(result.data));
// } on DioError catch (e) {
// print(e);
// } catch (e) {
// print(e);
// }
// }
// Future<List<ProductResponse>> fetchshop() async {
//     try {
//       final response = await Dio().get(url.productBaseUrl + url.productEndpoint); // Replace with your API endpoint
//       if (response.statusCode == 200) {
//         final List<dynamic> jsonData = response.data;
        
//         List<ProductResponse> productlist =
//             jsonData.map((json) => ProductResponse.fromJson(json)).toList();

//         // return productlist;
      
        
//       } else {
//         throw Exception('Failed to load data');
//       }
//     } catch (e) {
//       throw Exception('Error: $e');
//     }
//   }
 getProducts() async {
    final result = await dio.get(url.baseUrl + url.productEndpoint);
    print("**************$result");
     final List<dynamic> jsonData = jsonDecode(result.data);
     print("++++++++++++++++++${jsonData}");
   // final getProduct = ProductResponse.fromJson(result.data);
 List<ProductResponse> productlist =
           jsonData.map((json) => ProductResponse.fromJson(json)).toList();

           print("1111111111111111111111111111111111$productlist");
    if (productlist != null) {
      productNotifier.value.clear();
      productNotifier.value.addAll(productlist);
    } else {
      productNotifier.value.clear();
    }
  }
}
