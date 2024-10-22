void main() {
  // Map of pizza prices
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  // Example order
  const order = ['margherita', 'pepperoni', 'pineapple', 'vegetarian'];

  // Your code
  double total = 0;
  bool isOnMenu = true;
  for (var pizza in order) {
    if (pizzaPrices.containsKey(pizza)) {
      total += pizzaPrices[pizza]!;
    } else {
      print('$pizza is not on the menu.');
    }
    ;
  }
  ;
  if (isOnMenu) {
    print('Total: $total');
  }
}
