// :specimen: string.general //
	// :general: Round a floating-point number //
	  #include <math.h> // Put this at the top of your code, before main()
	  
		float n = 0.4f;
		n = round(n);
	// end //
	
	// :general: Increment a number //
		int m = 0;
		m++;
	// end //
	
	// :general: Generate a random number //
		#include <time.h> // Put these at the top of your code, before main()
    #include <stdlib.h>
		
		srandom(time(NULL));
		int o = random() % 10; // => integer in the interval [0,10]
	// end //
	
	// :general: Matrices //
		int matrix[2][3]; // creates a 2x3 matrix. Matrices of other types (float,
		// long, etc.) are created analogously. Note: the elements are _not_
		// guaranteed to be initialized to zero! 
		
		// Traverse the matrix, initializing everything to zero:
		int i,j;
		for(i=0;i<2;i++) {
		  for(j=0;j<3;j++) {
		    matrix[i][j] = 0;
		  }
		}
		
		// Modify the element in the first row, second column:
		matrix[0][1] = 12;
	// end //
// end //
