import 'package:freezed_annotation/freezed_annotation.dart';

part 'accounts_list.freezed.dart';
part 'accounts_list.g.dart';

@freezed
sealed class AccountsList with _$AccountsList {
  const factory AccountsList({
    required final List<String> accounts,
    @JsonKey(includeIfNull: false) final String? continuation,
  }) = _AccountsList;

  factory AccountsList.fromJson(Map<String, dynamic> json) =>
      _$AccountsListFromJson(json);
}
