#include <stdio.h>

/**
 * Says hello to the name given as the first argument
 */
int main(int argc, char* argv[]) {
	if (argc > 2) {
		printf("Error: Too many arguments!");
		return 1;
	}

	if (argc != 2) {
		printf("Error: Please provide a name as the first argument!");
		return 1;
	}

	printf ("Hello %s!", argv[1]);
	return 0;
}