import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hedma_app/model/product_model.dart';
import 'package:hedma_app/model/update_product_model.dart';
import 'package:hedma_app/services/update_product_services.dart';
import 'package:hedma_app/widgets/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../widgets/custom_buttom.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key});
  static String id = 'updateproductpage';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? name, desc, image, price;

  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel productModel =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            "update product",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                CustomTextField(
                  dataInputType: TextInputType.text,
                  hintText: "product name",
                  obscureState: false,
                  onChanged: (data) {
                    name = data;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  dataInputType: TextInputType.text,
                  hintText: "description",
                  obscureState: false,
                  onChanged: (data) {
                    desc = data;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  dataInputType: TextInputType.number,
                  hintText: "price",
                  obscureState: false,
                  onChanged: (data) {
                    price = data;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  dataInputType: TextInputType.text,
                  hintText: "image",
                  obscureState: false,
                  onChanged: (data) {
                    image = data;
                  },
                ),
                SizedBox(
                  height: 70,
                ),
                CustomButtom(
                  textButtom: 'Update',
                  onTap: () async{
                    try {
                      isloading = true;
                      setState(() {});
                     await updateProductMethod(productModel);
                      print('seccess');
                    } catch (e) {
                      print(e.toString());
                    }
                    isloading = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProductMethod(ProductModel productModel)  async{
   await UpdateProductService().updateProduct(
      id: productModel.id.toString(),
      title: name == null ? productModel.title : name!,
      price: price == null ? productModel.price.toString() : price.toString(),
      description: desc == null ? productModel.description : desc!,
      image: image == null ? productModel.image : image!,
      category: productModel.category,
    );
  }
}
