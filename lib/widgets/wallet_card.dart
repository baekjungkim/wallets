import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  final String currencyName, currencyCode, amount;
  final IconData icon;
  final int order;

  final _blackColor = const Color(0xff1f2123);

  const WalletCard({
    super.key,
    required this.currencyName,
    required this.currencyCode,
    required this.amount,
    required this.icon,
    this.order = 0,
  });

  @override
  Widget build(BuildContext context) {
    bool isOdd = order.isOdd;
    double offsetY = order * -20;

    return Transform.translate(
      offset: Offset(
        0,
        offsetY,
      ),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            color: isOdd ? Colors.white : _blackColor,
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currencyName,
                    style: TextStyle(
                      color: isOdd ? _blackColor : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isOdd ? _blackColor : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        currencyCode,
                        style: TextStyle(
                          color: isOdd
                              ? _blackColor
                              : Colors.white.withOpacity(0.8),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2,
                child: Transform.translate(
                  offset: const Offset(
                    -5,
                    12,
                  ),
                  child: Icon(
                    icon,
                    color: isOdd ? _blackColor : Colors.white,
                    size: 88,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
