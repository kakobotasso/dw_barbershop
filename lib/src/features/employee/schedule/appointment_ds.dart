import 'package:syncfusion_flutter_calendar/calendar.dart';

class AppointmentDs extends CalendarDataSource {
  @override
  List? get appointments => [
        Appointment(
          startTime: DateTime.now(),
          endTime: DateTime.now().add(
            const Duration(hours: 1),
          ),
          subject: 'Kako',
        ),
        Appointment(
          startTime: DateTime.now().add(
            const Duration(hours: 1),
          ),
          endTime: DateTime.now().add(
            const Duration(hours: 3),
          ),
          subject: 'Vic',
        ),
      ];
}
