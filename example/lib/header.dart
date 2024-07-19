import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/widgets/connection_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.aewalletClient,
  });

  final ArchethicDAppClient aewalletClient;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                'assets/images/AELogo.svg',
                semanticsLabel: 'AE Logo',
                height: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'AWC example',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          ConnectionButton(aewalletClient: aewalletClient),
        ],
      ),
    );
  }
}
