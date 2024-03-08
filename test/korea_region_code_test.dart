import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:korea_region_code/korea_region_code.dart';

void main() {
  test('adds one to input values', () async {
    final result1 = await KoreaRegionCodeRepository.getSidos();
    debugPrint('시도: $result1');
    expect(result1.length, 16);

    final result2 = await KoreaRegionCodeRepository.getSigungus(result1[2]);
    debugPrint('시군구: $result2');
    expect(result2, isNotEmpty);

    final result3 =
        await KoreaRegionCodeRepository.getEupmyeondongs(result2[4]);
    debugPrint('읍면동: $result3');
    expect(result3.length, Set.from(result3).length);

    final result4 =
        await KoreaRegionCodeRepository.getEupmyeondonglis(result2[4]);
    debugPrint('읍면동리: $result4');
    expect(result4.length, Set.from(result4).length);
  });
}
