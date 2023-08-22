import 'package:flutter/material.dart';

import '../../../core/ui/constants.dart';

class HomeError extends StatelessWidget {
  final VoidCallback onReloadClicked;
  const HomeError({super.key, required this.onReloadClicked});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      height: 108.0,
      decoration: BoxDecoration(
          border: Border.all(
            color: ColorsConstants.red,
          ),
          borderRadius: BorderRadius.circular(8.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Erro ao carregar total de agendamentos',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: ColorsConstants.red,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: onReloadClicked,
            splashColor: Colors.transparent,
            child: const Text(
              'Recarregar',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: ColorsConstants.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
