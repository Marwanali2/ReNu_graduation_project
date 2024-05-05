import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/offer_container.dart';

class OffersTapBody extends StatelessWidget {
  OffersTapBody({
    super.key,
  });
  List<String> offersTitles = [
    'Special Offer',
    'Limited Time Deal',
    'Exclusive Discount',
    'Flash Sale',
  ];
  List<String> offersDescriptions = [
    'Get 50% off on selected items',
    'Save big on our top products',
    'Don\'t miss out on this amazing offer',
    'Hurry, limited stock available',
  ];
  List<String> offersOldPrices = [
    'ُEGP 100',
    'EGP 200',
    'EGP 300',
    'EGP 400',
  ];
  List<String> offersNewPrices = [
    'EGP  50',
    'EGP 100',
    'EGP 150',
    'EGP  200',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            bottom: 20.w,
          ),
          child: OfferContainer(
            offerTitle: offersTitles[index],
            offerDescription: offersDescriptions[index],
            offerOldPrice: offersOldPrices[index],
            offerNewPrice: offersNewPrices[index],
          ),
        );
      },
    );
  }
}
