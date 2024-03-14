import 'package:flutter/material.dart';

import '../Constant/AppString.dart';
import '../Custom_Elements/Elements/Custom_AppBar.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppString.eticket, height: 9.h,),
    );
  }
}

