// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';
import 'Fall.dart';

import 'package:table_calendar/table_calendar.dart';

/// Example event class.
class MyEvent {
  final String title;

  const MyEvent(this.title);

  @override
  String toString() => title;
}

/// Function to get the events from the imported JSON data.
/// Function to get the events from the imported JSON data, spanning multiple days if necessary.
Map<DateTime, List<MyEvent>> _getEventsFromJson() {
  final eventsMap = LinkedHashMap<DateTime, List<MyEvent>>(
    equals: isSameDay,
    hashCode: getHashCode,
  );

  for (var eventData in AcademicData) {
    final title = eventData['title'];
    final startDate = DateTime.parse(eventData['start_date']);
    final endDate = DateTime.parse(eventData['end_date']);

    // Calculate the number of days between the start and end dates
    final days = daysInRange(startDate, endDate);

    for (var date in days) {
      if (!eventsMap.containsKey(date)) {
        eventsMap[date] = [];
      }
      eventsMap[date]?.add(MyEvent(title));
    }
  }

  return eventsMap;
}

/// Example events.
///
/// Using a [LinkedHashMap] is highly recommended if you decide to use a map.
final kEvents = LinkedHashMap<DateTime, List<MyEvent>>(
  equals: isSameDay,
  hashCode: getHashCode,
)..addAll(_getEventsFromJson());

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

/// Returns a list of [DateTime] objects from [first] to [last], inclusive.
List<DateTime> daysInRange(DateTime first, DateTime last) {
  final dayCount = last.difference(first).inDays + 1;
  return List.generate(
    dayCount,
    (index) => DateTime.utc(first.year, first.month, first.day + index),
  );
}

final kToday = DateTime.now().toUtc();

// Use UTC date for kFirstDay to match with other generated dates
final kFirstDay = DateTime.utc(kToday.year, kToday.month - 256, kToday.day);
final kLastDay = DateTime.utc(kToday.year, kToday.month + 256, kToday.day);
