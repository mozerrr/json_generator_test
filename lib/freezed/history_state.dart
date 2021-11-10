import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_states.freezed.dart';

@freezed
abstract class HistoryState with _$HistoryState {
  const HistoryState._();

  const factory HistoryState.initial() = HistoryInitialState;

  const factory HistoryState.loading() = HistoryLoadingState;

  const factory HistoryState.empty() = HistoryEmptyState;

  const factory HistoryState.failure(Error error) =
  HistoryFailureState;

  const factory HistoryState.data(
      {Map<DateTime, Iterable<String>>
      groupedOperations}) = HistoryDataState;
}
