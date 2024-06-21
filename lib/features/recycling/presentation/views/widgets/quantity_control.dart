import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlasticQuantityControl extends StatefulWidget {
  const PlasticQuantityControl({super.key});
static final TextEditingController plasticController = TextEditingController(text: '0');
  @override
  State<StatefulWidget> createState() {
    return _PlasticQuantityControlState();
  }
}

class _PlasticQuantityControlState extends State<PlasticQuantityControl> {
  

  void _increment() {
    setState(() {
      int currentValue = int.parse(PlasticQuantityControl.plasticController.text);
      currentValue++;
      PlasticQuantityControl.plasticController.text = currentValue.toString();
    });
  }

  void _decrement() {
    setState(() {
      int currentValue = int.parse(PlasticQuantityControl.plasticController.text);
      if (currentValue > 0) currentValue--;
      PlasticQuantityControl.plasticController.text = currentValue.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: _decrement,
        ),
        Container(
          width: 50.w,
          height: 30.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: TextField(
            controller: PlasticQuantityControl.plasticController,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (value) {
              setState(() {
                int newValue = int.tryParse(value) ?? 0;
                PlasticQuantityControl.plasticController.text = newValue.toString();
              });
            },
          ),
        ),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: _increment,
        ),
      ],
    );
  }
}





class IronQuantityControl extends StatefulWidget {
  const IronQuantityControl({super.key});
static final TextEditingController ironController = TextEditingController(text: '0');
  @override
  State<StatefulWidget> createState() {
    return _IronQuantityControlState();
  }
}

class _IronQuantityControlState extends State<IronQuantityControl> {
  

  void _increment() {
    setState(() {
      int currentValue = int.parse(IronQuantityControl.ironController.text);
      currentValue++;
      IronQuantityControl.ironController.text = currentValue.toString();
    });
  }

  void _decrement() {
    setState(() {
      int currentValue = int.parse(IronQuantityControl.ironController.text);
      if (currentValue > 0) currentValue--;
      IronQuantityControl.ironController.text = currentValue.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: _decrement,
        ),
        Container(
          width: 50.w,
          height: 30.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: TextField(
            controller: IronQuantityControl.ironController,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (value) {
              setState(() {
                int newValue = int.tryParse(value) ?? 0;
                IronQuantityControl.ironController.text = newValue.toString();
              });
            },
          ),
        ),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: _increment,
        ),
      ],
    );
  }
}


class GlassQuantityControl extends StatefulWidget {
  const GlassQuantityControl({super.key});
static final TextEditingController glassController = TextEditingController(text: '0');
  @override
  State<StatefulWidget> createState() {
    return _GlassQuantityControlState();
  }
}

class _GlassQuantityControlState extends State<GlassQuantityControl> {
  

  void _increment() {
    setState(() {
      int currentValue = int.parse(GlassQuantityControl.glassController.text);
      currentValue++;
      GlassQuantityControl.glassController.text = currentValue.toString();
    });
  }

  void _decrement() {
    setState(() {
      int currentValue = int.parse(GlassQuantityControl.glassController.text);
      if (currentValue > 0) currentValue--;
      GlassQuantityControl.glassController.text = currentValue.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: _decrement,
        ),
        Container(
          width: 50.w,
          height: 30.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: TextField(
            controller: GlassQuantityControl.glassController,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (value) {
              setState(() {
                int newValue = int.tryParse(value) ?? 0;
                GlassQuantityControl.glassController.text = newValue.toString();
              });
            },
          ),
        ),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: _increment,
        ),
      ],
    );
  }
}

