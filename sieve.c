#include <stdio.h>
#include <math.h>

int main(){
	const int target = 1000;
	int integers_to_target[target - 2];

	for (int i = 2; i <= target; i++) {
		integers_to_target[i-2] = i;
	}

	for (int i = 2; i < sqrt(target); i++) {
		for (int j = 2; j < target/i; j++) {
			integers_to_target[(i * j) - 2] = 0;
		}
	}

	for (int i = 0; i <= (target-2); i++) {
		if (integers_to_target[i] != 0) {
			printf("%d", integers_to_target[i]);
			printf("\n");
		} else {
			continue;
		}
	}

	return 0;

}
