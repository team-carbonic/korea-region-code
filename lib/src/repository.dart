import 'package:korea_region_code/korea_region_code.dart';
import 'package:korea_region_code/src/korea_region_code.dart';
import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository.freezed.dart';
part 'repository.g.dart';

class KoreaRegionCodeRepository {
  const KoreaRegionCodeRepository._();

  /// 사전순으로 정렬된 시도 목록을 반환한다.
  static Future<List<KoreaRegionCode>> getSidos() async {
    return (await _query(_sidosParameters)).sorted(
      (left, right) => left.fullName.compareTo(right.fullName),
    );
  }

  /// [sido]에 해당하는 시군구 목록을 반환한다.
  static Future<List<KoreaRegionCode>> getSigungus(
    final KoreaRegionCode sido,
  ) async {
    final sidoCode = sido.sidoCode;
    return (await _query(
      _getSigungusParameters(sidoCode),
    ))
        .sorted(
      (left, right) => left.fullName.compareTo(right.fullName),
    );
  }

  /// [sigungu]에 해당하는 읍면동 수준의 목록을 반환한다.
  /// 리 단위를 포함하지 않는다.
  static Future<List<KoreaRegionCode>> getEupmyeondongs(
    final KoreaRegionCode sigungu,
  ) async {
    final sigunguCode = sigungu.sigunguCode;
    return (await _query(
      _getEupmyeondongsParameters(sigunguCode, includingLi: false),
    ))
        .sorted(
      (left, right) => left.fullName.compareTo(right.fullName),
    );
  }

  /// [sigungu]에 해당하는 가장 작은 단위의 지역 목록을 반환한다.
  static Future<List<KoreaRegionCode>> getEupmyeondonglis(
    final KoreaRegionCode sigungu,
  ) async {
    final sigunguCode = sigungu.sigunguCode;

    final regions = await _query(
      _getEupmyeondongsParameters(sigunguCode, includingLi: true),
    );

    final regionsGroupedByEupmyeondongCode = <String, List<KoreaRegionCode>>{};
    for (final region in regions) {
      final eupmyeondongCode = region.eupmyeondongCode;
      if (regionsGroupedByEupmyeondongCode.containsKey(eupmyeondongCode)) {
        regionsGroupedByEupmyeondongCode[eupmyeondongCode]!.add(region);
      } else {
        regionsGroupedByEupmyeondongCode[eupmyeondongCode] = [region];
      }
    }

    return (regionsGroupedByEupmyeondongCode.values.where(
      (list) => 1 < list.length,
    )..forEach(
            (list) {
              list.removeWhere(
                (region) => region.code.endsWith('00'),
              );
            },
          ))
        .reduce((value, element) => value + element)
      ..sort(
        (left, right) => left.fullName.compareTo(right.fullName),
      );
  }

  static RegionCodeQueryParameters get _sidosParameters =>
      RegionCodeQueryParameters(
        pattern: '*00000000',
      );

  static RegionCodeQueryParameters _getSigungusParameters(
    final String sidoCode,
  ) =>
      RegionCodeQueryParameters(
        pattern: '$sidoCode*00000',
        ignoringZero: true,
      );

  static RegionCodeQueryParameters _getEupmyeondongsParameters(
    final String sigunguCode, {
    required final bool includingLi,
  }) =>
      RegionCodeQueryParameters(
        pattern: '$sigunguCode*${includingLi ? '' : '00'}',
        ignoringZero: true,
      );

  static Future<List<KoreaRegionCode>> _query(
    final RegionCodeQueryParameters parameters,
  ) async {
    final result = await Dio().get(
      'https://grpc-proxy-server-mkvo6j4wsq-du.a.run.app/v1/regcodes',
      queryParameters: parameters.toJson(),
    );

    final data = result.data;
    if (data is! Map<String, Object?>) {
      return [];
    }

    final regions = data['regcodes'];
    if (regions is! List) {
      return [];
    }

    return regions.whereType<Map>().map((region) {
      final code = region['code'].toString();
      final name = region['name'].toString();

      return KoreaRegionCode(
        code: code,
        fullName: name,
      );
    }).toList();
  }
}

@freezed
class RegionCodeQueryParameters with _$RegionCodeQueryParameters {
  factory RegionCodeQueryParameters({
    /// [pattern]은 10자리 숫자로 이루어진 문자열이다.
    /// 1~2번째 자리는 시도 코드를 나타낸다.
    /// 3~5번째 자리는 시군구 코드를 나타낸다.
    /// 6~8번째 자리는 읍면동 코드를 나타낸다.
    /// 9~10번째 자리는 리 코드를 나타낸다.
    @JsonKey(name: 'regcode_pattern') required final String pattern,
    @JsonKey(name: 'is_ignore_zero') @Default(false) final bool ignoringZero,
  }) = _RegionCodeQueryParameters;

  factory RegionCodeQueryParameters.fromJson(Map<String, dynamic> json) =>
      _$RegionCodeQueryParametersFromJson(json);
}
