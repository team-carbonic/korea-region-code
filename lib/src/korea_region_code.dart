import 'package:freezed_annotation/freezed_annotation.dart';

part 'korea_region_code.freezed.dart';
part 'korea_region_code.g.dart';

@freezed
class KoreaRegionCode with _$KoreaRegionCode {
  const KoreaRegionCode._();

  String get sidoName => fullName.split(' ').first;
  String get sigunguName {
    final list = fullName.split(' ');
    final lastIndex = list.lastIndexWhere(
      (word) => word.endsWith('시') || word.endsWith('군') || word.endsWith('구'),
    );
    return list.sublist(1, lastIndex + 1).join(' ');
  }

  String get eupmyeondongName => (eupmyeondongliName.split(' ')
        ..removeWhere(
          (word) => RegExp(r'[가-힣]*리$').hasMatch(word),
        ))
      .join(' ');

  String get eupmyeondongliName =>
      fullName.replaceFirst('$sidoName $sigunguName ', '');

  String get codeTillSido => code.substring(0, _sidoLength);
  String get codeTillSigungu => code.substring(0, _sigunguLength);
  String get codeTillEupmyeondong => code.substring(0, _eupmyeondongLength);

  bool get codeHasSigungu =>
      codeTillSigungu.substring(_sidoLength, _sigunguLength) !=
      '0' * (_sigunguLength - _sidoLength);
  bool get codeHasEupmyeondong =>
      codeTillEupmyeondong.substring(_sigunguLength, _eupmyeondongLength) !=
      '0' * (_eupmyeondongLength - _sigunguLength);

  static const _sidoLength = 2;
  static const _sigunguLength = 5;
  static const _eupmyeondongLength = 8;

  factory KoreaRegionCode({
    required final String code,
    required final String fullName,
  }) = _KoreaRegionCode;

  factory KoreaRegionCode.fromJson(Map<String, dynamic> json) =>
      _$KoreaRegionCodeFromJson(json);
}
