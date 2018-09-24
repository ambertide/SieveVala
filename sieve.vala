

void main () {

  const int target_number = 100;
  double square_root = Math.ceil (Math.sqrt (target_number));
  var numbers = new List<int> ();

  for (int i = 2; i < target_number + 1; i++) {
    numbers.append(i);
  }

  for (int j = 0; j < square_root; j++) {
    for (int k = 2; k < Math.ceil(target_number/2); k++) {
        numbers.remove(numbers.nth_data(j) * k);
    }
  }

  for (int n=0; n < numbers.length (); n++) {
    stdout.printf (numbers.nth_data(n).to_string ());
    stdout.printf ("\n");
  }
}
