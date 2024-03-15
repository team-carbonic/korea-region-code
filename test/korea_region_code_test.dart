import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:korea_region_code/korea_region_code.dart';

// 중복 존재 여부 테스트
void checkDuplication(final List list) {
  expect(list.length, Set.from(list).length);
}

void main() async {
  final sidos = await KoreaRegionCodeRepository.getSidos();
  final sigungus = await KoreaRegionCodeRepository.getSigungus(
    sidos.firstWhere((sido) => sido.sidoName == '경상남도'),
  );
  final eupmyeondongs = await KoreaRegionCodeRepository.getEupmyeondongs(
    sigungus.firstWhere((sigungu) => sigungu.sigunguName == '고성군'),
  );
  final eupmyeondonglis = await KoreaRegionCodeRepository.getEupmyeondonglis(
    sigungus.firstWhere((sigungu) => sigungu.sigunguName == '고성군'),
  );

  debugPrint('sidos: $sidos');
  debugPrint('sigungus: $sigungus');
  debugPrint('eupmyeondongs: $eupmyeondongs');
  debugPrint('eupmyeondonglis: $eupmyeondonglis');

  test('중복 존재 여부 테스트', () async {
    checkDuplication(sidos);
    checkDuplication(sigungus);
    checkDuplication(eupmyeondongs);
    checkDuplication(eupmyeondonglis);
  });

  test('시군구 포함 확인 함수 테스트', () {
    expect(sidos.first.codeHasSigungu, false);
    expect(sidos.first.codeHasEupmyeondong, false);

    expect(sigungus.first.codeHasSigungu, true);
    expect(sigungus.first.codeHasEupmyeondong, false);

    expect(eupmyeondongs.first.codeHasSigungu, true);
    expect(eupmyeondongs.first.codeHasEupmyeondong, true);
  });
}
