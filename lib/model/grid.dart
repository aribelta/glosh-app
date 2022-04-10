import 'package:bigproject/model/color.dart';
import 'package:bigproject/routes/navigator.dart';
import 'package:bigproject/utilities/sharedpreferences.dart';
import 'package:bigproject/view/user/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _itemMenu("Fresh", "Produce", context),
          _itemMenu("Dairy", "& Eggs", context),
          _itemMenu("Household", " ", context),
          _itemMenu("Snacks", " ", context),

          // Container(
          //     child: Column(
          //   children: [_grid(), Text("Fresh"), Text("Produce")],
          // )),
          // Container(
          //     child: Column(
          //   children: [_grid(), Text("Dairy"), Text("& Eggs")],
          // )),
          // Container(
          //     child: Column(
          //   children: [_grid(), Text("Household"), Text(" ")],
          // )),
          // Container(
          //     child: Column(
          //   children: [_grid(), Text("Snacks"), Text(" ")],
          // ))
        ],
      ),
    );
  }

  Widget _itemMenu(String title, String subtitle, BuildContext context) {
    return InkWell(
      onTap: () async {
        if (title == "Fresh") {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => ProductWidget()));
        } else if (title == "Dairy") {
          await SharedPreferencesUtils.deleteCredentials();
          Get.offNamed(Navi.login);
        }
      },
      child: Container(
          child: Column(
        children: [_grid(), Text(title), Text(subtitle)],
      )),
    );
  }

  Widget _grid() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Card(
            color: birugrid,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        height: 80,
        width: 80,
      ),
    );
  }
}
