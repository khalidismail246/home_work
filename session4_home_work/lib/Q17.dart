// Write a Dart program that formats a price tag string with a currency. Apply string methods such as toString, padLeft, and length to format and compare the results.
void main() {
  int price = 45;
  String currency = 'EG';
  var priceAndTag = price.toString() + currency;
  print(priceAndTag);
  print(priceAndTag.length);
  print(priceAndTag.padLeft(8));
  print(priceAndTag.length <= currency.length);
}
