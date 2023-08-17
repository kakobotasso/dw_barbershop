import 'package:dw_barbershop/src/core/ui/constants.dart';
import 'package:flutter/material.dart';

class WeekdaysPanel extends StatelessWidget {
  final List<String>? enabledDays;
  final ValueChanged<String> onDayPressed;

  const WeekdaysPanel({
    super.key,
    required this.onDayPressed,
    this.enabledDays
  });

   @override
   Widget build(BuildContext context) {
       return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Selecione os dias da semana',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500
            ),
          ),
          const SizedBox(
               height: 16,
            ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonDay(label: 'Seg', onDayPressed: onDayPressed, enabledDays: enabledDays,),
                ButtonDay(label: 'Ter', onDayPressed: onDayPressed, enabledDays: enabledDays,),
                ButtonDay(label: 'Qua', onDayPressed: onDayPressed, enabledDays: enabledDays,),
                ButtonDay(label: 'Qui', onDayPressed: onDayPressed, enabledDays: enabledDays,),
                ButtonDay(label: 'Sex', onDayPressed: onDayPressed, enabledDays: enabledDays,),
                ButtonDay(label: 'Sab', onDayPressed: onDayPressed, enabledDays: enabledDays,),
                ButtonDay(label: 'Dom', onDayPressed: onDayPressed, enabledDays: enabledDays,),
              ],
            ),
          ),
        ],
       );
  }
}

class ButtonDay extends StatefulWidget {
  final List<String>? enabledDays;
  final String label;
  final ValueChanged<String> onDayPressed;

  const ButtonDay({super.key, 
    required this.label,
    required this.onDayPressed,
    this.enabledDays,
  });

  @override
  State<ButtonDay> createState() => _ButtonDayState();
}

class _ButtonDayState extends State<ButtonDay> {

  var selected = false;

  @override
  Widget build(BuildContext context) {

    final textColor = selected ? Colors.white : ColorsConstants.grey;
    var buttonColor = selected ? ColorsConstants.brown : Colors.white;
    final buttonBorderColor = selected ? ColorsConstants.brown : ColorsConstants.grey;

    final ButtonDay(:enabledDays, :label, :onDayPressed) = widget;
    final disableDay = enabledDays != null && !enabledDays.contains(label);

    if(disableDay) {
      buttonColor = Colors.grey[400]!;
    }

    return Padding(
      padding: const EdgeInsets.only(left: 6, right: 6),
      child: InkWell(
        onTap: disableDay ? null : () {
          onDayPressed(label);
          setState(() {
            selected = !selected;
          });
        },
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: 40,
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color:  buttonColor,
            border: Border.all(
              color: buttonBorderColor
            ),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: textColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}