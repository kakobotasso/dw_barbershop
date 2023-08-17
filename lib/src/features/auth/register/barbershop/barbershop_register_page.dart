import 'package:dw_barbershop/src/core/ui/widgets/hours_panel.dart';
import 'package:dw_barbershop/src/core/ui/widgets/weekdays_panel.dart';
import 'package:flutter/material.dart';

class BarbershopRegisterPage extends StatelessWidget {

  const BarbershopRegisterPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Cadastrar estabelecimento'),),
           body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                     height: 5,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text('Nome')
                    ),
                  ),
                  const SizedBox(
                     height: 24,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text('E-mail')
                    ),
                  ),
                  const SizedBox(
                     height: 24,
                  ),
                  SizedBox(
                    height: 94,
                    child: WeekdaysPanel(onDayPressed: (value) {
                      print('Dia clicado: $value');
                    },
                    ),
                  ),
                  const SizedBox(
                     height: 24,
                  ),
                  SizedBox(
                    height: 178,
                    child: HoursPanel(
                      startTime: 6,
                      endTime: 18,
                      onHourPressed: (int value) {
                        print('Hora clicada: $value');
                      },
                    ),
                  ),
                  const SizedBox(
                     height: 24,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(56)
                    ), 
                    child: const Text('CADASTRAR ESTABELECIMENTO'),
                  ),
                ]
              ),
            ),
           ),
       );
  }
}