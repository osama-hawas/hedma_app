import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hedma_app/model/product_model.dart';
import 'package:hedma_app/services/all_product_services.dart';

import '../widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  static String id = 'homepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.cartPlus,
                color: Colors.black,
              ))
        ],
        elevation: 0,
        centerTitle: true,
        title: Text(
          "New Trend",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 45),
          child: FutureBuilder<List<ProductModel>>(
            future: AllProductServices().getAllProduct(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<ProductModel> product = snapshot.data!;
                return GridView.builder(
                  itemCount: product.length,
                  clipBehavior: Clip.none,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 60,
                    crossAxisSpacing: 6,
                    childAspectRatio: 1.3,
                  ),
                  itemBuilder: (contex, index) {
                    return CustomCard( productModel: product[index],);
                  },
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          )),
    );
  }
}
