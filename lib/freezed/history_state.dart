import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_state.freezed.dart';

@freezed
class HistoryState with _$HistoryState {
  const HistoryState._();

  const factory HistoryState.initial() = HistoryInitialState;

  const factory HistoryState.loading() = HistoryLoadingState;

  const factory HistoryState.empty() = HistoryEmptyState;

  const factory HistoryState.failure(Error error) =
  HistoryFailureState;

  const factory HistoryState.data(
      {required Map<DateTime, Iterable<String>>
      groupedOperations}) = HistoryDataState;
}
