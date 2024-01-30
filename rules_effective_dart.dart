void main() {
  getOrder().then((value) {
    print('You order: $value');
  })
      .catchError((error) {
    print('Sorry. $error');
  });
  print('Getting your order...');
}

// async-await
void main() async {
  print('Getting your order...');
  try {
    var order = await getOrder();
    print('You order: $order');
  } catch (error) {
    print('Sorry. $error');
  }
}
