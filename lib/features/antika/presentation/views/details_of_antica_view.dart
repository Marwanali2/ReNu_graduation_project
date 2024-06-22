import 'package:flutter/material.dart';
import 'package:graduation_project/features/antika/data/models/antika_model.dart';
import 'package:graduation_project/features/antika/presentation/views/widgets/details_of_antica_view_body.dart';

class DetailsOfAnticaView extends StatelessWidget {
  const DetailsOfAnticaView({super.key, required this.antikaModel});
final AntikaModel antikaModel;
  @override
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: DetailsOfAnticaViewBody(details: antikaModel,),
    );
  }
}
