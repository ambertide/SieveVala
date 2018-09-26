var form = document.getElementById("theform");
button = form.button_;
function calculate() {
  target_ = document.getElementById("cat");
  var array = [];
  var target_number = parseInt(target_.value);
  var output_string = "";
  var text_area = document.getElementById("primes");
  var textfield = document.getElementById("ocelot");
  var number_of_primes = 0;
  for (i = 2; i <= target_number; i++) {
    array[i - 2] = i;
  }
  for (i = 2; i<= parseInt(Math.floor(Math.sqrt(target_number))); i++) {
    for (j = 2; j<= parseInt(Math.floor(target_number/i)); j++) {
      array[(i * j) - 2] = 0;
    }
  }

  for (i = 0; i < target_number-2; i++) {
    if (array[i] != 0) {
      output_string = output_string + String(array[i]) + "\n";
      number_of_primes++;
    } else {
      continue;
    }
  }

  textfield.innerHTML = parseInt(number_of_primes);
  text_area.value = output_string;

}

button.addEventListener("click", calculate);
