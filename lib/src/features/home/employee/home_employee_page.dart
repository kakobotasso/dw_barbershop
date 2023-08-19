import 'package:dw_barbershop/src/core/ui/constants.dart';
import 'package:dw_barbershop/src/core/ui/widgets/avatar_widget.dart';
import 'package:dw_barbershop/src/features/home/widgets/home_header.dart';
import 'package:flutter/material.dart';

class HomeEmployeePage extends StatelessWidget {
  const HomeEmployeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: HomeHeader(
              hideFilter: true,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  const AvatarWidget(
                    hideUploadButton: true,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'nome e sobrenome',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * .7,
                    height: 108.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorsConstants.grey,
                        ),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '5',
                          style: TextStyle(
                            fontSize: 32,
                            color: ColorsConstants.brown,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Hoje',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                     height: 24,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('AGENDAR CLIENTE'), style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(56),),),
                  const SizedBox(
                     height: 24,
                  ),
                  OutlinedButton(onPressed: () {}, child: Text('VER AGENDA'), style: OutlinedButton.styleFrom(minimumSize: const Size.fromHeight(56),),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
