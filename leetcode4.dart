//You are given an array prices where prices[i] is the price of a given stock on the ith day.

//You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

//Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
void main() {
  print(maxProfit([7, 1, 5, 3, 6, 4]));
}

int maxProfit(List<int> prices) {
  if (prices.isEmpty) return 0;

  int minPrice = prices[0];
  int maxProfit = 0;

  for (var price in prices) {
    if (price < minPrice) {
      minPrice = price;
    } else if (price - minPrice > maxProfit) {
      maxProfit = price - minPrice;
    }
  }
  return maxProfit;
}
