
void main(){
  //1
double calculateBMI(double weight  , double height) {
  if (weight >=30 && weight <= 200 && height >=1.0 && height <= 2.5) {
    double bMi= weight / (height * height);
    if(bMi< 18.5 ){
      print( 'Your BMI is:${bMi} \n Category:Underweight');
    }
  else if  (bMi >= 18.5 && bMi <=24.9)

  {
      print('Your BMI is:${bMi} \n Category:normal');

  }
  else if (bMi >= 25&& bMi <=29.9)
  {

      print('Your BMI is:${bMi}\n   Category:Overweight');
  }
  else if (bMi >= 30)
  {

      print('Your BMI is:${bMi} \n Category:Obese');
  }
  }
  return 0; 
}
  calculateBMI(68.5, 1.62);

  //2
   List<int> Grades =[85, 90, 78, 92];
  void calculateBMIAverage(List<int> grades){
    double sum = 0;
    double Average =0;
for (int i = 0; i < grades.length; i++) {
  sum += grades[i];
}
   Average =sum / grades.length;
  if(Average >=60)
  {
    print(' Average grade: ${Average} \n Passed ' );
  }
  else{
    print(' Average grade: ${Average} \n Failed ' );

  }

  }
calculateBMIAverage(Grades);

//3

 double initialBalance = 1000;
  int operation = 2;

  switch (operation) {
    case 1:
      print("Your balance is: ${initialBalance}");
      break;
    case 2:
      double depositAmount = 500;
      initialBalance += depositAmount;
      print("Deposited successfully. New balance: ${initialBalance}. ");
      break;
    case 3:
      double withdrawAmount = 1200;
      if (withdrawAmount > initialBalance) {
        print(" Insufficient funds.");
      } 
      break;
    default:
      print("Invalid operation.");
  }
  //4

 String word = 'Level';
 void palindrome(String word){
  word = word.toLowerCase();
  String reversed = '';
  for (int i = word.length - 1; i >= 0; i--) {
    reversed += word[i];
  }
  bool isPalindrome = word == reversed;
  print('Is ${word} a palindrome? ${isPalindrome}');
 }
 palindrome(word);

 //5
   Map<String, double> cart ={"Shirt": 20.0 , "Jeans": 50.0, "Shoes": 80.0};

void calculateCartTotal(Map<String, double> cart, [double discount = 0.0]) {
  double total = 0;
  for (var price in cart.values) {
    total += price;
  }
  double discountedTotal = total * (1 - discount);

  print("Cart total:${total}");
  if (discount > 0) {
    print("With discount: ${discountedTotal}");
  }
}
 calculateCartTotal(cart);

}
