import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import '../Constant/AppString.dart';
import '../Custom_Elements/Elements/Custom_AppBar.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  var _razorpay = Razorpay();
  var amountController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    super.initState();
  }
  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
    print("Payment Done");
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
    print("Payment Fail");
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet is selected
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      //appBar: CustomAppBar(title: AppString.eticket, height: 9.h,),
      appBar: CupertinoNavigationBar(
        middle: Text("Payment Page"),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 30),
              child: TextField(
                controller: amountController,
                decoration: InputDecoration(hintText: "Enter Your Amount",),
              ),
            ),
            CupertinoButton(
              color: Colors.grey,
                child: Text("Pay Amount"),
                onPressed: () {
                  var options = {
                   'key': 'rzp_test_1DP5mmOlF5G5ag', // sir
                  //  'key': 'rzp_test_xvlZZBGCo0SzL0', // you tube
                    'amount': (int.parse(amountController.text)*100).toString(), //in the smallest currency sub-unit.
                    'name': 'Travel App',
                    'description': 'Demo',
                    'timeout': 300, // in seconds
                    'prefill': {
                      'contact': '1212121212',
                      'email': 'princy.miracle@gmail.com'
                    }
                  };
                _razorpay.open(options);
                },),
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _razorpay.clear();
    super.dispose();
  }
}

