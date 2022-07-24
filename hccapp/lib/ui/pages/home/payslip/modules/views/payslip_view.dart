import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/payslip_controller.dart';



class PayslipView extends GetView<PayslipController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PayslipView'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controller.products.length,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            child: Text("${controller.products[index]['bulan']}"),
          ),
          title: Text("${controller.products[index]['name']}"),
          subtitle: Text("${controller.products[index]['desc']}"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.getPDF(),
        child: Icon(Icons.note),
      ),
    );
  }
}
