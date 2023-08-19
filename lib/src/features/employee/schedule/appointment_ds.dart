import 'package:dw_barbershop/src/core/ui/constants.dart';
import 'package:dw_barbershop/src/model/schedule_model.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class AppointmentDs extends CalendarDataSource {
  final List<ScheduleModel> schedules;

  AppointmentDs({required this.schedules});

  @override
  List? get appointments {
    return schedules.map((e) {
      final ScheduleModel(
        date: DateTime(:year, :month, :day),
        :hour,
        :clientName
      ) = e;
      final startTime = DateTime(year, month, day, hour, 0, 0);
      final endTime = DateTime(year, month, day, hour + 1, 0, 0);
      return Appointment(
        startTime: startTime,
        endTime: endTime,
        subject: clientName,
        color: ColorsConstants.brown
      );
    }).toList();
  }
}
