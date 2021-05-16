import 'package:anagram/anagram.dart';
import 'package:test/test.dart';

void main() {
  test('amor & roma', () {
    expect(isAnagram('amor', 'roma'), true);
  });
  test('Tercera & Certera', () {
    expect(isAnagram('Tercera', 'Certera'), true);
  });

  test('Tercero & Certera', () {
    expect(isAnagram('Tercero', 'Certera'), false);
  });
  test('Camila & Sin Bandera', () {
    expect(isAnagram('Camila ', 'Sin Bandera'), false);
  });

  test('First argument is null', () {
    expect(() => isAnagram(null, 'Hola Mundo'), throwsArgumentError);
  });

  test('Second argument is null', () {
    expect(() => isAnagram('Hola Mundo', null), throwsArgumentError);
  });

  test('Both argument are null', () {
    expect(() => isAnagram(null, null), throwsArgumentError);
  });
}
