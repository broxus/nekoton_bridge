import 'package:money2/money2.dart';
import 'package:money2_improver/money2_improver.dart';
import 'package:test/test.dart';

void main() {
  test('test default currency formatting', () {
    final everWithDefaultFormatting =
        Currency.create('EVER', 9, symbol: 'EVER');
    expect(
        MoneyImprover.parseWithCurrencyImproved(
                '2.0', everWithDefaultFormatting,)
            .formatImproved(),
        'EVER2.00',
        reason: 'Failed default formatting',);
  });

  test('test custom currency formatting', () {
    final everWithDefaultFormatting =
        Currency.create('EVER', 9, symbol: 'EVER', pattern: '0.000000000 S');
    expect(
        MoneyImprover.parseWithCurrencyImproved(
                '2.0', everWithDefaultFormatting,)
            .formatImproved(),
        '2.000000000 EVER',
        reason: 'Failed custom formatting',);
  });

  test('test custom currency formatting 2', () {
    final everWithDefaultFormatting =
        Currency.create('EVER', 9, symbol: 'EVER', pattern: '0.000000000 S');
    expect(
        MoneyImprover.parseWithCurrencyImproved(
                '2.01', everWithDefaultFormatting,)
            .formatImproved(),
        '2.010000000 EVER',
        reason: 'Failed custom formatting',);
  });

  test('test custom currency formatting 3 (trim zeros)', () {
    final everWithDefaultFormatting =
        Currency.create('EVER', 9, symbol: 'EVER', pattern: '0.######### S');
    expect(
        MoneyImprover.parseWithCurrencyImproved(
                '2.01', everWithDefaultFormatting,)
            .formatImproved(),
        '2.01 EVER',
        reason: 'Failed custom formatting',);
  });

  test('test custom explicit formatting', () {
    final everWithDefaultFormatting =
        Currency.create('EVER', 9, symbol: 'EVER', pattern: '0.######### S');
    expect(
        MoneyImprover.parseWithCurrencyImproved(
                '2.01', everWithDefaultFormatting,)
            .formatImproved(pattern: 'S 0.#########'),
        'EVER 2.01',
        reason: 'Failed custom formatting',);
  });
}
