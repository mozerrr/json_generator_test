import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_events.freezed.dart';

@freezed
class HistoryEvent with _$HistoryEvent {
  const HistoryEvent._();

  const factory HistoryEvent.fetch() = HistoryFetchEvent;
}
