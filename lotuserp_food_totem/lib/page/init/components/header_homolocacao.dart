import 'package:flutter/material.dart';

class HeaderHomologacao extends StatelessWidget {
  const HeaderHomologacao({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: const Text(
                'HOMOLOGACAO',
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
