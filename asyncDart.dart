//cerner_2tothe5th_2022
import 'dart:io';
Future<void> ItemsOrdered(int n) async {
  print('Awaiting user order number...');
  if(n <= 3) {
  var order = await Ordered();
  print('Your order is: $order');
}
else
{
    print('Invalid order');
    
}
}
Future<String> Ordered() {
  return Future.delayed(const Duration(seconds: 4), () => 'Large Latte , Cookies, fries');
}
void main() async {
    int n = 0;
    print('Enter Bill number:');
    String? s = stdin.readLineSync();
    if (s != null){
       n = int.parse(s);
      print(n); 
 }
  await ItemsOrdered(n);
}
