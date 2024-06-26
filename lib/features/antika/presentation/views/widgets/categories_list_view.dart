import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/features/antika/data/models/create_antika.dart';
import 'package:graduation_project/features/antika/presentation/manger/create_antika%20cubit/cubit/create_antika_cubit.dart';

class ChooseCatigoryBodyListView extends StatefulWidget {
  const ChooseCatigoryBodyListView({super.key, required this.onItemSelected});
  final Function(CreateAntika?) onItemSelected;

  @override
  State<ChooseCatigoryBodyListView> createState() =>
      _ChooseCatigoryBodyListViewState();
}

class _ChooseCatigoryBodyListViewState
    extends State<ChooseCatigoryBodyListView> {
  CreateAntika? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateAntikaCubit, CreateAntikaState>(
      builder: (context, state) {
        if (state is CreateAntikaSuccess) {
          return SizedBox(
            width: double.infinity,
            child: DropdownButton<CreateAntika>(
              isExpanded: true,
              items: state.items.map((item) {
                return DropdownMenuItem<CreateAntika>(
                  value: item,
                  child: Text(item.name),
                );
              }).toList(),
              onChanged: (CreateAntika? value) {
                setState(() {
                  _selectedItem = value;
                });
                widget.onItemSelected(value); // Notify the parent widget
              },
              hint: Text(_selectedItem != null
                  ? _selectedItem!.name
                  : 'Select an item'),
            ),
          );
        } else if (state is CreateAntikaFailure) {
          return Text('Error: ${state.errorMessage}');
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );

    // Center(
    //   child: SizedBox(
    //     height: 60,
    //     child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: 6,
    //       itemBuilder: (context, index) {
    //         return Padding(
    //           padding: const EdgeInsets.only(right: 4),
    //           child: Container(
    //             width: 50,
    //             height: 60,
    //             decoration: BoxDecoration(
    //               border: Border.all(color: const Color(0xffE5E5E5), width: 1),
    //               borderRadius: BorderRadius.circular(10),
    //             ),
    //             child: Image.asset(catigories[index]),
    //           ),
    //         );
    //       },
    //     ),
    //   ),
    // );
  }
}
