bool isAnagram(String a, String b) {
  if (a != null && b != null) {
    if (a.length == b.length) {
      var arrayA = <String>[];
      var arrayB = <String>[];

      arrayA = a.toLowerCase().split('');
      arrayB = b.toLowerCase().split('');

      arrayA.sort();
      arrayB.sort();

      return arrayA.join() == arrayB.join() ? true : false;
    }
    return false;
  }
  throw ArgumentError.notNull();
}
