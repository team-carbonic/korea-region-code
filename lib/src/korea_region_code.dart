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

  String get sidoCode => code.substring(0, 2);
  String get sigunguCode => code.substring(0, 5);
  String get eupmyeondongCode => code.substring(0, 8);

  factory KoreaRegionCode({
    required final String code,
    required final String fullName,
  }) = _KoreaRegionCode;

  factory KoreaRegionCode.fromJson(Map<String, dynamic> json) =>
      _$KoreaRegionCodeFromJson(json);
}
