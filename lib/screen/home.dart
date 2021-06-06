import 'package:flutter/material.dart';
import 'package:flutter_pkcoin/components/slider.dart';
import 'package:http/http.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:web3dart/web3dart.dart';

class Home extends StatefulWidget {
  final String title;
  Home({Key? key, required this.title}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Client httpClient;
  // Web3Client web3;
  bool data = false;
  double myAmount = 0;
  final myAddress = "0x9b4eF34934fE70dC84e502a78C47fd4564d7D6F0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.gray300,
      body: ZStack([
        VxBox()
            .blue600
            .size(context.screenWidth, context.percentHeight * 30)
            .make(),
        VStack([
          (context.percentHeight * 10).heightBox,
          "\$PKCOIN".text.xl4.white.bold.center.makeCentered().py16(),
          (context.percentHeight * 5).heightBox,
          VxBox(
                  child: VStack([
            "Balance".text.gray700.xl2.semiBold.makeCentered(),
            10.heightBox,
            data
                ? "\$1".text.bold.xl6.makeCentered()
                : CircularProgressIndicator().centered()
          ]))
              .white
              .p16
              .rounded
              .shadowXl
              .size(context.screenWidth, context.percentHeight * 18)
              .make()
              .p16(),
          30.heightBox,
          SliderWidget(
              min: 0,
              max: 100,
              finalVal: (val) {
                myAmount = (val * 100).round();
              }).centered().py16(),
          HStack(
            [
              FlatButton.icon(
                      onPressed: () {},
                      color: Colors.blue,
                      shape: Vx.roundedSm,
                      icon: Icon(
                        Icons.refresh,
                        color: Colors.white,
                      ),
                      label: "Refresh".text.white.make())
                  .h(50),
              FlatButton.icon(
                      onPressed: () {},
                      color: Colors.green,
                      shape: Vx.roundedSm,
                      icon: Icon(
                        Icons.call_made_outlined,
                        color: Colors.white,
                      ),
                      label: "Deposit".text.white.make())
                  .h(50),
              FlatButton.icon(
                      onPressed: () {},
                      color: Colors.red,
                      shape: Vx.roundedSm,
                      icon: Icon(
                        Icons.call_received_outlined,
                        color: Colors.white,
                      ),
                      label: "Withdraw".text.white.make())
                  .h(50),
            ],
            alignment: MainAxisAlignment.spaceAround,
            axisSize: MainAxisSize.max,
          )
        ])
      ]),
    );
  }
}
