import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/auth/presentation/mangers/auth%20cubit/auth_cubit.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';
import 'package:graduation_project/features/recycling/presentation/managers/recycling%20cubit/recycling_cubit.dart';
import 'package:graduation_project/features/recycling/presentation/views/widgets/quantity_control.dart';

class OrderTypeContainer extends StatelessWidget {
  const OrderTypeContainer({
    super.key,
    required this.recycleTypeSvg,
    required this.recycleTypeText,
    required this.showQuantityControl,
  });

  final String recycleTypeSvg;
  final String recycleTypeText;
  final bool showQuantityControl;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blueGrey.shade100,
              ),
              child: Center(
                child: SvgPictureComponent(
                    name: recycleTypeSvg, width: 24, height: 24),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              recycleTypeText,
              style: TextStyles.font15SemiBlack2SemiBold,
            ),
            const Spacer(),
            showQuantityControl
                ? recycleTypeText == 'Plastic'
                    ? const PlasticQuantityControl()
                    : recycleTypeText == 'Iron'
                        ? const IronQuantityControl()
                        : recycleTypeText == 'Glass'
                            ? const GlassQuantityControl()
                            : const SizedBox()
                : recycleTypeText == 'Plastic'
                    ? Text('${RecyclingCubit.pointsOfBlastic} Points')
                    : recycleTypeText == 'Iron'
                        ?  Text('${RecyclingCubit.pointsOfIron} Points')
                        : recycleTypeText == 'Glass'
                            ?  Text('${RecyclingCubit.pointsOfGlass} Points')
                            : const SizedBox(),
          ],
        );
      },
    );
  }
}
