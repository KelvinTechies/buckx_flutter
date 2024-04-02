String shortenWithAsterisks(String text, int maxLength) {
  if (text.length <= maxLength) {
    return text;
  } else {
    int prefixLength = (maxLength ~/ 2) - 1;
    int suffixLength = maxLength - prefixLength - 1;
    String prefix = text.substring(0, prefixLength);
    String suffix = text.substring(text.length - suffixLength);
    return '$prefix.....$suffix';
  }
}
