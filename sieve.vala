void main () {

  const int target_number = 1000;
  double square_root = Math.ceil (Math.sqrt (target_number));
  int[] integers_to_target = new int[target_number];

  for (int i = 2; i <= target_number; i++) {
    integers_to_target[i - 2] = i;
  }

    for (int j = 2; j < square_root; j++) {
      for (int k = 2; k < Math.ceil(target_number/j); k++) {
        integers_to_target[(j * k) - 2] = 0;
    }
  }


  for (int n=0; n < (target_number - 2); n++) {
    if (integers_to_target[n] != 0) {
      stdout.printf (integers_to_target[n].to_string ());
      stdout.printf ("\n");
    } else {
      continue;
    }
  }
}
