import 'package:flutter/material.dart';

class RightSheet extends StatelessWidget {
  const RightSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: PhysicalModel(
        color: Colors.blue,
        elevation: 8.0,
        shadowColor: Colors.white,
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width * 0.4,
          decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(10),
            ),
          ),
          child: Column(
            children: [
              GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(Icons.close)),
            ],
          ),
        ),
      ),
    );
  }
}
